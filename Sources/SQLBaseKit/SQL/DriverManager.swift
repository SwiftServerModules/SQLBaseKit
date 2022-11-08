import Foundation

public class DriverManager {

  init() {}

  typealias InitFunction = @convention(c) () -> UnsafeMutableRawPointer

  static func plugin(driverType: String, at path: String) -> Driver {
    let openRes = dlopen(path, RTLD_NOW | RTLD_LOCAL)
    if openRes != nil {
      defer {
        dlclose(openRes)
      }

      let symbolName = driverType
      let sym = dlsym(openRes, symbolName)

      if sym != nil {
        let f: InitFunction = unsafeBitCast(sym, to: InitFunction.self)
        let pluginPointer = f()
        let builder = Unmanaged<DriverBuilder>.fromOpaque(pluginPointer).takeRetainedValue()
        return builder.build()
      } else {
        fatalError("error loading lib: symbol \(symbolName) not found, path: \(path)")
      }
    } else {
      if let err = dlerror() {
        fatalError("error opening lib: \(String(format: "%s", err)), path: \(path)")
      } else {
        fatalError("error opening lib: unknown error, path: \(path)")
      }
    }
  }

  public static func getConnection(url: String?, driver: Dialect, properties: [String: String])
    -> Connection
  {
    let driverInstance = loadDriverForType(driver)
    guard let hostname: String = url else { fatalError("url is null") }
    print("Starting Database Connection to \(hostname)")
    // initilize driver here
    return driverInstance.connect(url: url, properties: properties)
  }

  static func loadDriverForType(_ driverType: Dialect) -> Driver {
    let mappedDylibPath = getLibPathForDriver(driverType)
    let aDriver = plugin(driverType: driverType.rawValue, at: mappedDylibPath)
    return aDriver
  }

  static func getLibPathForDriver(_ driverType: Dialect) -> String {
    // TODO - map path against driver
    let fileManager = FileManager.default
    let currentPath = fileManager.currentDirectoryPath
    let dyLibName = dyLibNameForDriver(driverType)
    return
      currentPath + "/" + dyLibName
  }

  static func dyLibNameForDriver(_ driverType: Dialect) -> String {
    switch driverType {
    case .mysql:
      return "libMySqlKit.dylib"
    }
  }
}

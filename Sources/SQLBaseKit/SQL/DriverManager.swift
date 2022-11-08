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

  public static func getConnection(url: String?, properties: [String: String]) -> Connection {

    guard let driverType = properties["driverType"] else { fatalError("Driver type not defined") }
    let driverInstance = loadDriverForType(driverType)
    guard let hostname: String = url else { fatalError("url is null") }
    print("Starting Database Connection to \(hostname)")
    // initilize driver here
    return driverInstance.connect(url: url, properties: properties)
  }

  static func loadDriverForType(_ driverType: String) -> Driver {
    let mappedDylibPath = getLibPathForDriver(driverType)
    let aDriver = plugin(driverType: driverType, at: mappedDylibPath)
    return aDriver
  }

  static func getLibPathForDriver(_ driverPath: String) -> String {
    // TODO - map path against driver
    return
      ""
  }
}

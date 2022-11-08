public class DriverManager {
  init() {}

  public static func getConnection(url: String?, properties: [String: String]) -> Connection {

    guard let hostname: String = url else { fatalError("url is null") }
    print("Starting Database Connection to \(hostname)")
    // initilize driver here

    fatalError()
  }
}

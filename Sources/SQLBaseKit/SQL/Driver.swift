public protocol Driver {

  func connect(url: String?, properties: [String: String]) -> Connection

}

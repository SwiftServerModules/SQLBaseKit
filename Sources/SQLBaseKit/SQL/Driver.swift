public protocol Driver {

  func connect(url: String?, properties: [String: String]) -> Connection

}
open class DriverBuilder {
  public init() {}

  open func build() -> Driver {
    fatalError("You have to override this method.")
  }

}

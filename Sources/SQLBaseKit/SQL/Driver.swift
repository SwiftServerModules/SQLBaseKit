public protocol Driver {
    
    func connect(url: String, properties: [String: String]) throws -> Connection
    func acceptsURL(url: String) throws -> Bool
    func getPropertyInfo(url: String, info: [String: String]) throws -> [DriverPropertyInfo]
    func getMajorVersion() -> Int
    func getMinorVersion() -> Int
    func jdbcCompliant() -> Bool
    
}
open class DriverBuilder {
    public init() {}
    
    open func build() -> Driver {
        fatalError("You have to override this method.")
    }
    
}

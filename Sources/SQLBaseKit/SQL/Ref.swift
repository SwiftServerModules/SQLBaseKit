public protocol Ref {

    func getBaseTypeName() throws -> String
    func getObject(map: [String: Any]) throws -> Any
    func getObject() throws -> Any
    func setObject(value: Any) throws
}

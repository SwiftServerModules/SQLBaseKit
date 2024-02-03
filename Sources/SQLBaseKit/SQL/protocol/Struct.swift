public protocol Struct {
    func getSQLTypeName() throws -> String
    func getAttributes() throws -> [Any]
    func getAttributes(map: [String: AnyClass]) throws -> [Any]
}

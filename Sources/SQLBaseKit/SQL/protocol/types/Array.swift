public protocol Array {
    func getBaseTypeName() throws -> String
    func getBaseType() throws -> Int
    func getArray() throws -> Any
    func getArray(map: Any) throws -> Any
    func getArray(index: Int64, count: Int) throws -> Any
    func getArray(index: Int64, count: Int, map: Any) throws -> Any
    func getResultSet() throws -> ResultSet
    func getResultSet(map: Any) throws -> ResultSet
    func getResultSet(index: Int64, count: Int) throws -> ResultSet
    func getResultSet(index: Int64, count: Int, map: Any) throws -> ResultSet
    func free() throws
}

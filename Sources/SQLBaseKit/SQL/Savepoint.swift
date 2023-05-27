public protocol Savepoint {
    func getSavepointId() throws -> Int
    func getSavepointName() throws -> String

}

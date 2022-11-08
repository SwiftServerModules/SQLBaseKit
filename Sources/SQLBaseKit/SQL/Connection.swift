public protocol Connection {

  func createStatement() throws -> Statement

  func close() throws

}

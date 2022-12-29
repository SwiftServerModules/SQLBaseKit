public protocol Connection {

  func createStatement() throws -> Statement?

  func close() throws

  func getClientInfo() throws -> Any?
  func getClientInfo(name: String) throws -> String?

  func setSchema(schema: String) throws
  func getSchema() throws -> String?

  func isClosed() throws -> Bool?

  func setReadOnly(readOnly: Bool) throws
  func isReadOnly() throws -> Bool?
  func isValid(timeout: Int) throws -> Bool?

  // TODO: CallableStatement
  func prepareCall(sql: String) throws -> Statement?
  func prepareCall(sql: String, resultSetType: Int) throws -> Statement?

  // TODO: PreparedStatement
  func prepareStatement(sql: String) throws -> Statement?
  func prepareStatementprepareCall(sql: String, resultSetType: Int) throws -> Statement?

  func rollback() throws

}

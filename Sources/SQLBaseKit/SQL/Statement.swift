public protocol Statement {

  func executeQuery(sql: String) throws -> ResultSet

}

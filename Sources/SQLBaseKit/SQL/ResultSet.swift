public protocol ResultSet {

  func next() throws -> Bool

  func getString(columnIndex: Int) throws -> String

  func getInt(columnIndex: Int) throws -> Int

  func getBool(columnIndex: Int) throws -> Bool

  func getString(columnLabel: String) throws -> String

  func getInt(columnLabel: String) throws -> Int

  func getBool(columnLabel: String) throws -> Bool
}

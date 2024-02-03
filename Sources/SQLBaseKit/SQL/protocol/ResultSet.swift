import Foundation

public protocol ResultSet {
    
    // cursor operations
    
    func isAfterLast() throws -> Bool?
    
    func isBeforeFirst() throws -> Bool?
    
    func isClosed() throws -> Bool?
    
    func isFirst() throws -> Bool?
    
    func isLast() throws -> Bool?
    
    func last() throws -> Bool?
    
    func moveToCurrentRowlast() throws
    
    func moveToInsertRow() throws
    
    func next() throws -> Bool?
    
    func previous() throws -> Bool?
    
    func wasNull() throws -> Bool?
    
    // read operations on Column
    
    // String
    func getString(columnIndex: Int) throws -> String?
    
    func getString(columnLabel: String) throws -> String?
    
    // Int
    func getInt(columnIndex: Int) throws -> Int?
    
    func getInt(columnLabel: String) throws -> Int?
    
    // Bool
    func getBool(columnIndex: Int) throws -> Bool?
    
    func getBool(columnLabel: String) throws -> Bool?
    
    // Double
    func getDouble(columnIndex: Int) throws -> Double?
    
    func getDouble(columnLabel: String) throws -> Double?
    
    // Float
    func getFloat(columnIndex: Int) throws -> Float?
    
    func getFloat(columnLabel: String) throws -> Float?
    
    // Date
    func getDate(columnIndex: Int) throws -> Date?
    
    func getDate(columnLabel: String) throws -> Date?
    
    // Byte
    func getByte(columnIndex: Int) throws -> Int8?
    
    func getByte(columnLabel: String) throws -> Int8?
    
    // Bytes
    func getBytes(columnIndex: Int) throws -> [Int8]?
    
    func getBytes(columnLabel: String) throws -> [Int8]?
    
    // Object
    func getObject(columnIndex: Int) throws -> Any?
    
    func getObject(columnLabel: String) throws -> Any?
    
    // update operations on Row
    
    func refreshRow() throws
    
    func rowDeleted() throws -> Bool?
    
    func rowInserted() throws -> Bool?
    
    func rowUpdated() throws -> Bool?
    
    // update operation on Column
    
    func updateString(columnLabel: String, x: String) throws
    
    func updateString(columnIndex: Int, x: String) throws
    
    func updateInt(columnLabel: String, x: Int) throws
    
    func updateInt(columnIndex: Int, x: Int) throws
    
    func updateBool(columnLabel: String, x: Bool) throws
    
    func updateBool(columnIndex: Int, x: Bool) throws
    
    func updateDouble(columnLabel: String, x: Double) throws
    
    func updateDouble(columnIndex: Int, x: Double) throws
    
    func updateFloat(columnLabel: String, x: Float) throws
    
    func updateFloat(columnIndex: Int, x: Float) throws
    
    func updateDate(columnLabel: String, x: Date) throws
    
    func updateDate(columnIndex: Int, x: Date) throws
    
    func updateByte(columnLabel: String, x: Int8) throws
    
    func updateByte(columnIndex: Int, x: Int8) throws
    
    func updateBytes(columnLabel: String, x: [Int8]) throws
    
    func updateBytes(columnIndex: Int, x: [Int8]) throws
    
    func updateObject(columnLabel: String, x: Any) throws
    
    func updateObject(columnIndex: Int, x: Any) throws
    
    func updateNull(columnLabel: String) throws
    
    func updateNull(columnIndex: Int) throws
    
}

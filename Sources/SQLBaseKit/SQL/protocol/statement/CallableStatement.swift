import Foundation

public protocol CallableStatement: PreparedStatement {
    
    func registerOutParameter(parameterIndex: Int, sqlType: Int) throws
    func registerOutParameter(parameterIndex: Int, sqlType: Int, scale: Int) throws
    func wasNull() throws -> Bool
    
    func getString(parameterIndex: Int) throws -> String
    func getBoolean(parameterIndex: Int) throws -> Bool
    func getByte(parameterIndex: Int) throws -> Int8
    func getShort(parameterIndex: Int) throws -> Int16
    func getInt(parameterIndex: Int) throws -> Int
    func getLong(parameterIndex: Int) throws -> Int64
    func getFloat(parameterIndex: Int) throws -> Float
    func getDouble(parameterIndex: Int) throws -> Double
    func getBytes(parameterIndex: Int) throws -> [Int8]
    func getDate(parameterIndex: Int) throws -> Date
    func getTime(parameterIndex: Int) throws -> Date
    func getTimestamp(parameterIndex: Int) throws -> String
    func getObject(parameterIndex: Int) throws -> Any
    // BigDecimal not supported
    // func getBigDecimal(parameterIndex: Int) throws -> Any
    func getObject(parameterIndex: Int, map: [String: Any]) throws -> Any
    func getRef(parameterIndex: Int) throws -> Ref
    func getBlob(parameterIndex: Int) throws -> Blob
    func getClob(parameterIndex: Int) throws -> Clob
    func getArray(parameterIndex: Int) throws -> Array
    
    func getDate(parameterIndex: Int, cal: Calendar) throws -> Date
    func getTime(parameterIndex: Int, cal: Calendar) throws -> Date
    func getTimestamp(parameterIndex: Int, cal: Calendar) throws -> String
    
    func registerOutParameter(parameterIndex: Int, sqlType: Int, typeName: String) throws -> String
    func registerOutParameter(parameterName: String, sqlType: Int) throws -> String
    func registerOutParameter(parameterName: String, sqlType: Int, scale: Int) throws -> String
    func registerOutParameter(parameterName: String, sqlType: Int, typeName: String) throws
    -> String
    func getURL(parameterIndex: Int) throws -> URL
    
    func setURL(parameterName: String, val: URL) throws
    func setNull(parameterName: String, sqlType: Int) throws
    
    func setBoolean(parameterName: String, x: Bool) throws
    func setByte(parameterName: String, x: Int8) throws
    func setShort(parameterName: String, x: Int16) throws
    func setInt(parameterName: String, x: Int) throws
    func setLong(parameterName: String, x: Int64) throws
    func setFloat(parameterName: String, x: Float) throws
    func setDouble(parameterName: String, x: Double) throws
    // BigDecimal not supported
    // func setBigDecimal(parameterName: String, x: Int) throws
    func setString(parameterName: String, x: String) throws
    func setBytes(parameterName: String, x: [Int8]) throws
    func setDate(parameterName: String, x: Date) throws
    func setTime(parameterName: String, x: Date) throws
    func setTimeStamp(parameterName: String, x: String) throws
    func setAsciiStream(parameterName: String, x: InputStream, length: Int) throws
    func setBinaryStream(parameterName: String, x: InputStream, length: Int) throws
    
    func setObject(parameterName: String, x: Any, targetSqlType: Int, scale: Int) throws
    func setObject(parameterName: String, x: Any, targetSqlType: Int) throws
    func setObject(parameterName: String, x: Any) throws
    
    func setDate(parameterName: String, x: Date, cal: Calendar) throws
    func setTime(parameterName: String, x: Date, cal: Calendar) throws
    func setTimeStamp(parameterName: String, x: String, cal: Calendar) throws
    
    func setNull(parameterName: String, x: Int, typeName: String) throws
    
    func getString(parameterName: String) throws -> String
    func getBoolean(parameterName: String) throws -> Bool
    func getByte(parameterName: String) throws -> Int8
    func getShort(parameterName: String) throws -> Int16
    func getInt(parameterName: String) throws -> Int
    func getLong(parameterName: String) throws -> Int64
    func getFloat(parameterName: String) throws -> Float
    func getDouble(parameterName: String) throws -> Double
    func getBytes(parameterName: String) throws -> [Int8]
    func getDate(parameterName: String) throws -> Date
    func getTime(parameterName: String) throws -> Date
    func getTimestamp(parameterName: String) throws -> String
    func getObject(parameterName: String) throws -> Any
    func getObject(parameterName: String, map: [String: Any]) throws -> Any
    func getRef(parameterName: String) throws -> Ref
    func getBlob(parameterName: String) throws -> Blob
    func getClob(parameterName: String) throws -> Clob
    func getArray(parameterName: String) throws -> Array
    
    func getDate(parameterName: String, cal: Calendar) throws -> Date
    func getTime(parameterName: String, cal: Calendar) throws -> Date
    func getTimestamp(parameterName: String, cal: Calendar) throws -> String
    func getURL(parameterName: String) throws -> URL
    func getRowId(parameterName: String) throws -> RowId
    func getRowId(parameterIndex: Int) throws -> RowId
    
    func setRowId(parameterName: String, x: RowId) throws
    func setNString(parameterName: String, x: String) throws
    
    func setNClob(parameterName: String, value: NClob) throws
    func setBlob(parameterName: String, x: InputStream, length: Int) throws
    
    func getNClob(parameterIndex: Int) throws -> NClob
    func getNClob(parameterName: String) throws -> NClob
    
    func getNString(parameterIndex: Int) throws -> String
    func getNString(parameterName: String) throws -> String
    
    func setBlob(parameterName: String, value: Blob) throws
    func setClob(parameterName: String, value: Clob) throws
    
    func setAsciiStream(parameterName: String, x: InputStream, length: Int64) throws
    func setBinaryStream(parameterName: String, x: InputStream, length: Int64) throws
    
    func setAsciiStream(parameterName: String, x: InputStream) throws
    func setBinaryStream(parameterName: String, x: InputStream) throws
    
    func setBlob(parameterName: String, x: InputStream) throws
    
    func getObject(parameterIndex: Int, type: Any) throws -> Any
    func getObject(parameterName: String, type: Any) throws -> Any
    
    func setObject(parameterName: String, x: Any, targetSqlType: SQLType, scaleOrLength: Int) throws
    func setObject(parameterName: String, x: Any, targetSqlType: SQLType) throws
    
    func registerOutParameter(parameterIndex: Int, sqlType: SQLType) throws
    func registerOutParameter(parameterIndex: Int, sqlType: SQLType, scale: Int) throws
    func registerOutParameter(parameterIndex: Int, sqlType: SQLType, typeName: String) throws
    
    func registerOutParameter(parameterName: String, sqlType: SQLType) throws
    func registerOutParameter(parameterName: String, sqlType: SQLType, scale: Int) throws
    func registerOutParameter(parameterName: String, sqlType: SQLType, typeName: String) throws
    
}

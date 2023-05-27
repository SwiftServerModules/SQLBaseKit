import Foundation

public protocol PreparedStatement: Statement {

    func executeQuery() throws -> ResultSet
    func executeUpdate() throws -> Int

    func setNull(parameterIndex: Int, sqlType: Int) throws
    func setBoolean(parameterIndex: Int, x: Bool) throws
    func setByte(parameterIndex: Int, x: Int8) throws
    // short not supported
    // func setShort(parameterIndex: Int, x: Int8) throws
    func setInt(parameterIndex: Int, x: Int32) throws
    func setLong(parameterIndex: Int, x: Int64) throws
    func setFloat(parameterIndex: Int, x: Float) throws
    func setDouble(parameterIndex: Int, x: Double) throws
    // BigDecimal not supported
    // func setBigDecimal(parameterIndex: Int, x: Double) throws
    func setString(parameterIndex: Int, x: String) throws
    func setBytes(parameterIndex: Int, x: [Int8]) throws
    func setDate(parameterIndex: Int, x: Date) throws
    // taking Date and Time same
    func setTime(parameterIndex: Int, x: Date) throws
    func setTimestamp(parameterIndex: Int, x: String) throws

    func setAsciiStream(parameterIndex: Int, x: InputStream, length: Int) throws
    func setBinaryStream(parameterIndex: Int, x: InputStream, length: Int) throws

    func clearParameters() throws

    func setObject(parameterIndex: Int, x: Any, targetSqlType: Int) throws
    func setObject(parameterIndex: Int, x: Any) throws
    func execute() throws -> Bool

    func addBatch() throws
    //  Reader not supported yet
    // func setCharacterStream(parameterIndex: Int, reader: Reader, length: Int) throws
    func setRed(parameterIndex: Int, x: Ref) throws
    func setBlob(parameterIndex: Int, x: Blob) throws
    func setClob(parameterIndex: Int, x: Clob) throws
    func setArray(parameterIndex: Int, x: Array) throws

    func getMetaData() throws -> ResultSetMetaData

    func setDate(parameterIndex: Int, x: Date, cal: Calendar) throws
    // taking Date and Time same
    func setTime(parameterIndex: Int, x: Date, cal: Calendar) throws
    func setTimeStamp(parameterIndex: Int, x: String, cal: Calendar) throws

    func setNull(parameterIndex: Int, sqlType: Int, typeName: String) throws
    func setURL(parameterIndex: Int, x: URL) throws
    func getParameterMetaData() throws -> ParameterMetaData

    func setRowId(parameterIndex: Int, x: RowId) throws
    func setNString(parameterIndex: Int, value: String) throws
    //  NCharacterStream not supported
    // func setNCharacterStream(parameterIndex: Int, reader: Reader, length: Int64) throws
    func setNClob(parameterIndex: Int, x: NClob) throws
    // Clob not supported
    // func setClob(parameterIndex: Int, reader: Reader, length: Int64) throws

    // NClob not supported
    // func setNClob(parameterIndex: Int, reader: Reader, length: Int64) throws
    func setBlob(parameterIndex: Int, inputStream: InputStream, length: Int64) throws

    func setObject(parameterIndex: Int, x: Any, targetSqlType: Int, scaleOrLength: Int) throws
    func setAsciiStream(parameterIndex: Int, x: InputStream, length: Int64) throws
    func setBinaryStream(parameterIndex: Int, x: InputStream, length: Int64) throws
    // Reader not supported
    // func setCharacterStream(parameterIndex: Int, reader: Reader, length: Int64) throws
    func setAsciiStream(parameterIndex: Int, x: InputStream) throws
    func setBinaryStream(parameterIndex: Int, x: InputStream) throws
    // Reader not supported
    // func setCharacterStream(parameterIndex: Int, reader: Reader) throws
    // func setNCharacterStream(parameterIndex: Int, reader: Reader) throws
    // func setClob(parameterIndex: Int, reader: Reader) throws
    // func setNClob(parameterIndex: Int, reader: Reader) throws
    func setBlob(parameterIndex: Int, x: InputStream) throws

    func setObject(parameterIndex: Int, x: Any, targetSqlType: SQLType, scaleOrLength: Int) throws
    func setObject(parameterIndex: Int, x: Any, targetSqlType: SQLType) throws

    func executeLargeUpdate() throws -> Int64

}

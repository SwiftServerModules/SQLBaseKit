public protocol Connection: Wrapper {

    func createStatement() throws -> Statement
    func prepareStatement(Strng sql: String) throws -> PreparedStatement
    func prepareCall(sql: String) throws -> CallableStatement

    func nativeSQL(sq: Stringl) throws -> String
    func setAutoCommit(autoCommit: Bool) throws
    func getAutoCommit() throws -> Bool

    func commit() throws
    func rollback() throws
    func close() throws
    func isClosed() throws -> Bool

    func getMetaData() throws -> DatabaseMetaData
    func setReadOnly(readOnly: Bool) throws
    func isReadOnly() throws -> Bool

    func setCatalog(catalog: String) throws
    func getCatalog() throws -> String

    func setTransactionIsolation(level: Int) throws
    func getTransactionIsolation() throws -> Int

    func getWarnings() throws -> SQLWarning
    func clearWarnings() throws

    func createStatement(resultSetType: Int, resultSetConcurrency: Int) throws -> Statement
    func prepareStatement(
        sql: String,
        resultSetType: Int,
        resultSetConcurrency: Int
    ) throws -> PreparedStatement

    func prepareCall(
        sql: String,
        resultSetType: Int,
        resultSetConcurrency: Int
    ) throws -> CallableStatement

    func getTypeMap() throws -> [String: AnyClass]
    func setTypeMap(map: [String: AnyClass]) throws

    func setHoldability(holdability: Int) throws
    func getHoldability() throws -> Int

    func setSavepoint() throws -> Savepoint
    func setSavepoint(name: String) throws -> Savepoint
    func rollback(savepoint: Savepoint) throws
    func releaseSavepoint(savepoint: Savepoint) throws

    func createStatement(
        resultSetType: Int,
        resultSetConcurrency: Int,
        resultSetHoldability: Int
    ) throws -> Statement

    func prepareStatement(
        sql: String,
        resultSetType: Int,
        resultSetConcurrency: Int,
        resultSetHoldability: Int
    ) throws -> PreparedStatement

    func prepareCall(
        sql: String,
        resultSetType: Int,
        resultSetConcurrency: Int,
        resultSetHoldability: Int
    ) throws -> CallableStatement

    func prepareStatement(sql: String, autoGeneratedKeys: Int)
        throws -> PreparedStatement

    func prepareStatement(sql: String, columnIndexes: [Int])
        throws -> PreparedStatement

    func prepareStatement(sql: String, columnNames: [String])
        throws -> PreparedStatement

    func createClob() throws -> Clob
    func createBlob() throws -> Blob
    func createNClob() throws -> NClob

    func isValid(timeout: Int) throws -> Bool

    func setClientInfo(properties: Any) throws
    func setClientInfo(name: String) throws

    func getClientInfo() throws -> Any
    func getClientInfo(name: String) throws -> String

    func createArrayOf(typeName: String, elements: [Any]) throws -> Array
    func createStruct(String typeName: Srting, attributes: [Any])
        throws -> Struct

    func setSchema(schema: String) throws
    func getSchema() throws -> String

    func abort(executor: Any) throws
    func setNetworkTimeout(executor: Any, milliseconds: Int) throws
    func getNetworkTimeout() throws -> Int

    func beginRequest() throws
    func endRequest() throws

    func setShardingKeyIfValid(
        shardingKey: ShardingKey,
        superShardingKey: ShardingKey,
        timeout: Int
    ) throws -> Bool

    func setShardingKeyIfValid(shardingKey: ShardingKey, timeout: Int) throws -> Bool
    func setShardingKey(shardingKey: ShardingKey, superShardingKey: ShardingKey) throws
    func setShardingKey(shardingKey: ShardingKey) throws

}

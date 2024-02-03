public protocol DatabaseMetaData: Wrapper {
    
    func allProceduresAreCallable() throws -> Bool
    func allTablesAreSelectable() throws -> Bool
    func getURL() throws -> String
    func getUserName() throws -> String
    func isReadOnly() throws -> Bool
    func nullsAreSortedHigh() throws -> Bool
    func nullsAreSortedLow() throws -> Bool
    func nullsAreSortedAtStart() throws -> Bool
    func nullsAreSortedAtEnd() throws -> Bool
    func getDatabaseProductName() throws -> String
    func getDatabaseProductVersion() throws -> String
    func getDriverName() throws -> String
    func getDriverVersion() throws -> String
    func usesLocalFiles() throws -> Bool
    func usesLocalFilePerTable() throws -> Bool
    func supportsMixedCaseIdentifiers() throws -> Bool
    func storesUpperCaseIdentifiers() throws -> Bool
    func storesLowerCaseIdentifiers() throws -> Bool
    func storesMixedCaseIdentifiers() throws -> Bool
    func supportsMixedCaseQuotedIdentifiers() throws -> Bool
    func storesUpperCaseQuotedIdentifiers() throws -> Bool
    func storesLowerCaseQuotedIdentifiers() throws -> Bool
    func storesMixedCaseQuotedIdentifiers() throws -> Bool
    func getIdentifierQuoteString() throws -> String
    func getSQLKeywords() throws -> String
    func getNumericFunctions() throws -> String
    func getStringFunctions() throws -> String
    func getSystemFunctions() throws -> String
    func getTimeDateFunctions() throws -> String
    func getSearchStringEscape() throws -> String
    func getExtraNameCharacters() throws -> String
    func supportsAlterTableWithAddColumn() throws -> Bool
    func supportsAlterTableWithDropColumn() throws -> Bool
    func supportsColumnAliasing() throws -> Bool
    func nullPlusNonNullIsNull() throws -> Bool
    func supportsConvert() throws -> Bool
    func supportsConvert(fromType: Int, toType: Int) throws -> Bool
    func supportsTableCorrelationNames() throws -> Bool
    func supportsDifferentTableCorrelationNames() throws -> Bool
    func supportsExpressionsInOrderBy() throws -> Bool
    func supportsOrderByUnrelated() throws -> Bool
    func supportsGroupBy() throws -> Bool
    func supportsGroupByUnrelated() throws -> Bool
    func supportsGroupByBeyondSelect() throws -> Bool
    func supportsLikeEscapeClause() throws -> Bool
    func supportsMultipleResultSets() throws -> Bool
    func supportsMultipleTransactions() throws -> Bool
    func supportsNonNullableColumns() throws -> Bool
    func supportsMinimumSQLGrammar() throws -> Bool
    func supportsCoreSQLGrammar() throws -> Bool
    func supportsExtendedSQLGrammar() throws -> Bool
    func supportsANSI92EntryLevelSQL() throws -> Bool
    func supportsANSI92IntermediateSQL() throws -> Bool
    func supportsANSI92FullSQL() throws -> Bool
    func supportsIntegrityEnhancementFacility() throws -> Bool
    func supportsOuterJoins() throws -> Bool
    func supportsFullOuterJoins() throws -> Bool
    func supportsLimitedOuterJoins() throws -> Bool
    func getSchemaTerm() throws -> String
    func getProcedureTerm() throws -> String
    func getCatalogTerm() throws -> String
    func isCatalogAtStart() throws -> Bool
    func getCatalogSeparator() throws -> String
    func supportsSchemasInDataManipulation() throws -> Bool
    func supportsSchemasInProcedureCalls() throws -> Bool
    func supportsSchemasInTableDefinitions() throws -> Bool
    func supportsSchemasInIndexDefinitions() throws -> Bool
    func supportsSchemasInPrivilegeDefinitions() throws -> Bool
    func supportsCatalogsInDataManipulation() throws -> Bool
    func supportsCatalogsInProcedureCalls() throws -> Bool
    func supportsCatalogsInTableDefinitions() throws -> Bool
    func supportsCatalogsInIndexDefinitions() throws -> Bool
    func supportsCatalogsInPrivilegeDefinitions() throws -> Bool
    func supportsPositionedDelete() throws -> Bool
    func supportsPositionedUpdate() throws -> Bool
    func supportsSelectForUpdate() throws -> Bool
    func supportsStoredProcedures() throws -> Bool
    func supportsSubqueriesInComparisons() throws -> Bool
    func supportsSubqueriesInExists() throws -> Bool
    func supportsSubqueriesInIns() throws -> Bool
    func supportsSubqueriesInQuantifieds() throws -> Bool
    func supportsCorrelatedSubqueries() throws -> Bool
    func supportsUnion() throws -> Bool
    func supportsUnionAll() throws -> Bool
    func supportsOpenCursorsAcrossCommit() throws -> Bool
    func supportsOpenCursorsAcrossRollback() throws -> Bool
    func supportsOpenStatementsAcrossCommit() throws -> Bool
    func supportsOpenStatementsAcrossRollback() throws -> Bool
    func getMaxBinaryLiteralLength() throws -> Int
    func getMaxCharLiteralLength() throws -> Int
    func getMaxColumnNameLength() throws -> Int
    func getMaxColumnsInGroupBy() throws -> Int
    func getMaxColumnsInIndex() throws -> Int
    func getMaxColumnsInOrderBy() throws -> Int
    func getMaxColumnsInSelect() throws -> Int
    func getMaxColumnsInTable() throws -> Int
    func getMaxConnections() throws -> Int
    func getMaxCursorNameLength() throws -> Int
    func getMaxIndexLength() throws -> Int
    func getMaxSchemaNameLength() throws -> Int
    func getMaxProcedureNameLength() throws -> Int
    func getMaxCatalogNameLength() throws -> Int
    func getMaxRowSize() throws -> Int
    func doesMaxRowSizeIncludeBlobs() throws -> Bool
    func getMaxStatementLength() throws -> Int
    func getMaxStatements() throws -> Int
    func getMaxTableNameLength() throws -> Int
    func getMaxTablesInSelect() throws -> Int
    func getMaxUserNameLength() throws -> Int
    func getDefaultTransactionIsolation() throws -> Int
    func supportsTransactions() throws -> Bool
    func supportsTransactionIsolationLevel(level: Int) throws -> Bool
    func supportsDataDefinitionAndDataManipulationTransactions() throws -> Bool
    func supportsDataManipulationTransactionsOnly() throws -> Bool
    func dataDefinitionCausesTransactionCommit() throws -> Bool
    func dataDefinitionIgnoredInTransactions() throws -> Bool
    
    func getProcedures(
        catalog: String,
        schemaPattern: String,
        procedureNamePattern: String
    ) throws -> ResultSet
    func getProcedureColumns(
        catalog: String,
        schemaPattern: String,
        procedureNamePattern: String,
        columnNamePattern: String
    ) throws -> ResultSet
    func getTables(
        catalog: String,
        schemaPattern: String,
        tableNamePattern: String,
        types: [String]
    ) throws -> ResultSet
    func getSchemas() throws -> ResultSet
    func getCatalogs() throws -> ResultSet
    func getTableTypes() throws -> ResultSet
    func getColumns(
        catalog: String,
        schemaPattern: String,
        tableNamePattern: String,
        columnNamePattern: String
    )
    throws -> ResultSet
    func getColumnPrivileges(
        catalog: String,
        schema: String,
        table: String,
        columnNamePattern: String
    ) throws -> ResultSet
    func getTablePrivileges(
        catalog: String,
        schemaPattern: String,
        tableNamePattern: String
    ) throws -> ResultSet
    func getBestRowIdentifier(
        catalog: String,
        schema: String,
        table: String,
        scope: Int,
        nullable: Bool
    ) throws -> ResultSet
    func getVersionColumns(
        catalog: String,
        schema: String,
        table: String
    ) throws -> ResultSet
    
    func getPrimaryKeys(
        catalog: String,
        schema: String,
        table: String
    ) throws -> ResultSet
    func getImportedKeys(
        catalog: String,
        schema: String,
        table: String
    ) throws -> ResultSet
    func getExportedKeys(
        catalog: String,
        schema: String,
        table: String
    ) throws -> ResultSet
    func getCrossReference(
        parentCatalog: String,
        parentSchema: String,
        parentTable: String,
        foreignCatalog: String,
        foreignSchema: String,
        foreignTable: String
    ) throws -> ResultSet
    
    func getTypeInfo() throws -> ResultSet
    func getIndexInfo(
        catalog: String,
        schema: String,
        table: String,
        unique: Bool,
        approximate: Bool
    )
    throws -> ResultSet
    func supportsResultSetType(type: Int) throws -> Bool
    func supportsResultSetConcurrency(type: Int, concurrency: Int)
    throws -> Bool
    func ownUpdatesAreVisible(type: Int) throws -> Bool
    func ownDeletesAreVisible(type: Int) throws -> Bool
    func ownInsertsAreVisible(type: Int) throws -> Bool
    func othersUpdatesAreVisible(type: Int) throws -> Bool
    func othersDeletesAreVisible(type: Int) throws -> Bool
    func othersInsertsAreVisible(type: Int) throws -> Bool
    func updatesAreDetected(type: Int) throws -> Bool
    func deletesAreDetected(type: Int) throws -> Bool
    func insertsAreDetected(type: Int) throws -> Bool
    func supportsBatchUpdates() throws -> Bool
    func getUDTs(
        catalog: String,
        schemaPattern: String,
        typeNamePattern: String,
        types: [Int]
    )
    throws -> ResultSet
    func getConnection() throws -> Connection
    func supportsSavepoints() throws -> Bool
    func supportsNamedParameters() throws -> Bool
    func supportsMultipleOpenResults() throws -> Bool
    func supportsGetGeneratedKeys() throws -> Bool
    func getSuperTypes(
        catalog: String,
        schemaPattern: String,
        typeNamePattern: String
    ) throws -> ResultSet
    func getSuperTables(
        catalog: String,
        schemaPattern: String,
        tableNamePattern: String
    ) throws -> ResultSet
    func getAttributes(
        catalog: String,
        schemaPattern: String,
        typeNamePattern: String,
        attributeNamePattern: String
    )
    throws -> ResultSet
    func supportsResultSetHoldability(holdability: Int) throws -> Bool
    func getResultSetHoldability() throws -> Int
    func getDatabaseMajorVersion() throws -> Int
    func getDatabaseMinorVersion() throws -> Int
    func getJDBCMajorVersion() throws -> Int
    func getJDBCMinorVersion() throws -> Int
    func getSQLStateType() throws -> Int
    func locatorsUpdateCopy() throws -> Bool
    func supportsStatementPooling() throws -> Bool
    func getRowIdLifetime() throws -> RowIdLifetime
    func getSchemas(catalog: String, schemaPattern: String) throws -> ResultSet
    func supportsStoredFunctionsUsingCallSyntax() throws -> Bool
    func autoCommitFailureClosesAllResultSets() throws -> Bool
    func getClientInfoProperties()
    throws -> ResultSet
    func getFunctions(
        catalog: String,
        schemaPattern: String,
        functionNamePattern: String
    ) throws -> ResultSet
    func getFunctionColumns(
        catalog: String,
        schemaPattern: String,
        functionNamePattern: String,
        columnNamePattern: String
    ) throws -> ResultSet
    func getPseudoColumns(
        catalog: String,
        schemaPattern: String,
        tableNamePattern: String,
        columnNamePattern: String
    )
    throws -> ResultSet
    func generatedKeyAlwaysReturned() throws -> Bool
}

public enum JDBCType: SQLType {
    
    case BIT
    
    //     case BIT = -7
    //     case TINYINT = Types.TINYINT
    //     case SMALLINT = Types.SMALLINT
    //     case INTEGER = Types.INTEGER
    //     case BIGINT = Types.BIGINT
    //     case FLOAT = Types.FLOAT
    //     case REAL = Types.REAL
    //     case DOUBLE = Types.DOUBLE
    //     case NUMERIC = Types.NUMERIC
    //     case DECIMAL = Types.DECIMAL
    //     case CHAR = Types.CHAR
    //     case VARCHAR = Types.VARCHAR
    //     case LONGVARCHAR = Types.LONGVARCHAR
    //     case DATE = Types.DATE
    //     case TIME = Types.TIME
    //     case TIMESTAMP = Types.TIMESTAMP
    //     case BINARY = Types.BINARY
    //     case VARBINARY = Types.VARBINARY
    //     case LONGVARBINARY = Types.LONGVARBINARY
    //     case NULL = Types.NULL
    //     case OTHER = Types.OTHER
    //     case JAVA_OBJECT = Types.JAVA_OBJECT
    //     case DISTINCT = Types.DISTINCT
    //     case STRUCT = Types.STRUCT
    //     case ARRAY = Types.ARRAY
    //     case BLOB = Types.BLOB
    //     case CLOB = Types.CLOB
    //     case REF = Types.REF
    //     case DATALINK = Types.DATALINK
    //     case BOOLEAN = Types.BOOLEAN
    //     case ROWID = Types.ROWID
    //     case NCHAR = Types.NCHAR
    //     case NVARCHAR = Types.NVARCHAR
    //     case LONGNVARCHAR = Types.LONGNVARCHAR
    //     case NCLOB = Types.NCLOB
    //     case SQLXML = Types.SQLXML
    //     case REF_CURSOR = Types.REF_CURSOR
    //     case TIME_WITH_TIMEZONE = Types.TIME_WITH_TIMEZONE
    //     case TIMESTAMP_WITH_TIMEZONE = Types.TIMESTAMP_WITH_TIMEZONE
    
    
    public func getName() -> String {
        return ""
    }
    
    public func getVendor() -> String {
        return "swift.sql"
    }
    
    public func getVendorTypeNumber() -> Int {
        switch self {
        case .BIT: return Types.BIT
            
        }
    }
    
    
}

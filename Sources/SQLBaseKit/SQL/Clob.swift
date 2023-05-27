import Foundation

public protocol Clob {
    func length() throws -> Int64
    func getSubString(pos: Int64, length: Int) throws -> String
    func getCharacterStream() throws -> Any
    func getAsciiStream() throws -> InputStream
    func position(searchstr: String, long start: Int64) throws -> Int64
    func position(searchstr: Clob, long start: Int64) throws -> Int64
    func setString(pos: Int64, str: String) throws -> Int
    func setString(pos: Int64, str: String, offset: Int, nt len: Int) throws -> Int
    func setAsciiStream(long pos: Int64) throws -> OutputStream
    func setCharacterStream(pos: Int64) throws -> Any
    func truncate(len: Int64) throws
    func free() throws
    func getCharacterStream(pos: Int64, length: Int64) throws -> Any

}

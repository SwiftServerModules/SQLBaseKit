import Foundation

public protocol Blob {

    func length() throws -> Int64
    func getBytes(pos: Int64, length: Int) throws -> [Int8]
    func getBinaryStream() throws -> InputStream
    func position(pattern: [Int8], start: Int64) throws -> Int64
    func position(pattern: Blob, start: Int64) throws -> Int64
    func setBytes(position: Int64, bytes: [Int8]) throws -> Int
    func setBytes(pos: Int64, bytes: [Int8], offset: Int, lent: Int) throws -> Int
    func setBinaryStream(pos: Int64) throws -> OutputStream
    func truncate(len: Int64) throws
    func free() throws
    func getBinaryStream(pos: Int64, length: Int64) throws -> InputStream

}

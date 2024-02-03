public protocol RowId {
    func equals(obj: Any) -> Bool
    func getBytes() -> [Int8]
    func toString() -> String
    func hashCode() -> Int
}

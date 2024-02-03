public protocol SQLType {
    func getName() -> String
    func getVendor() -> String
    func getVendorTypeNumber() -> Int
}

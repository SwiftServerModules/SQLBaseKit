public protocol Wrapper {
    associatedtype T

    func unwrap<T>(iface: T) throws -> T

    func isWrapperFor(iface: Any) throws -> Bool
}

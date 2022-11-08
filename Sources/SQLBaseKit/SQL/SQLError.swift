public enum SQLError: Error {
  case responseStatusError(status: Int, message: String)

}

extension SQLError {
  public var errorDescription: String? {
    switch self {
    case let .responseStatusError(status, message):
      return "SQL Error with status \(status) and message \(message) was thrown"
    }
  }
}

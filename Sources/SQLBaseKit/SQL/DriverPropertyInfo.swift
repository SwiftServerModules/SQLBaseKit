public class DriverPropertyInfo {
    var name: String
    var value: String
    var description: String?
    var required: Bool = false
    var choices: [String] = []
    
    init(name: String, value: String) {
        self.name = name
        self.value = value
    }
    
}

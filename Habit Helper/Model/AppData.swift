import Foundation

class AppData {
    static var user = User()
    
    static func createUser() {
        user.email = "nastyamadness@gmail.com"
        user.password = "26fk"
        user.age = 22
        
        
    }
}

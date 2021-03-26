import Foundation

class Animal {
    var mood = 100
    var hunger = 100
    var health = 100
    
    var name = ""
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}

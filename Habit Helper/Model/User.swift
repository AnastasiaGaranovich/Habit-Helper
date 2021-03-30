import ObjectMapper

class User: Mappable {
    var habits = [Habit]()
    var animal = Animal()
    
    var name = ""
    var age = 0
    var email = ""
    var password = ""
    
    init() {
        
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        age <- map["age"]
        email <- map["email"]
    }
}

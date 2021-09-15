import ObjectMapper

class User: Mappable {
    var habits = [Habit]()
    
    var name = ""
    var age = 0
    var email = ""
    var birthday = ""
    
    var avatarUrl = ""
    
    init() {
        
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map["name"]
        age <- map["age"]
        email <- map["email"]
        birthday <- map["birthday"]
        avatarUrl <- map["avatarUrl"]
        habits <- map["habits"]
    }
}

//"name": "Denis",
//"age": 30,
//"email": "denis@gmail.com",
//"birthday": "05:05:2005",
//"habits": [],
//"avatarUrl": "https://crates.io/assets/Cargo-Logo-Small-c39abeb466d747f3be442698662c5260.png"

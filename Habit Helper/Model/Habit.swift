import UIKit
import ObjectMapper

enum HabitType {
    case goodHabit
    case badHabit
}

class Habit: Mappable {
    var time = Date()
    var dailyRepetitions = 0
    var habitName = ""
    var habitColor = UIColor.white
    var timeInterval = DateInterval()
    var habitType = HabitType.goodHabit
    
    init() {
        
    }
    
    convenience init(time: Date, habitName: String, dailyRepet: Int, habitColor: UIColor, timeInterval: DateInterval, habitType: HabitType) {
        self.init()
        self.time = time
        self.habitName = habitName
        self.dailyRepetitions = dailyRepet
        self.habitColor = habitColor
        self.timeInterval = timeInterval
        self.habitType = habitType
    }
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        time <- map["time"]
        dailyRepetitions <- map["daily_repetitions"]
        habitName <- map["name"]
        habitColor <- map["color"]
        timeInterval <- map["interval"]
        habitType <- map["type"]
    }
    
    
    func setDateInterval(dateStart: Date, dateEnd: Date) {
        timeInterval = DateInterval(start: dateStart, end: dateEnd)
    }
}

import UIKit
import ObjectMapper

enum HabitType {
    case goodHabit
    case badHabit
}

class Habit: Mappable {
    var time = Date()
    var dailyRepetitions = 0
    var dailyRepetitionsDone = 0
    var habitName = ""
    var habitColor = UIColor.white
    var timeInterval = DateInterval()
    var habitType = HabitType.goodHabit
    
    var progress: CGFloat {
        return 1 - CGFloat(dailyRepetitionsDone) / CGFloat(dailyRepetitions)
    }
    
    init() {
        
    }

    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        time <- map["time"]
        dailyRepetitions <- map["daily_repetitions"]
        dailyRepetitionsDone <- map["daily_repetitions_done"]
        habitName <- map["name"]
        habitColor <- map["color"]
        timeInterval <- map["interval"]
        habitType <- map["type"]
    }
}

extension Array where Element: Habit {
    var averageProgress: CGFloat {
        return map { $0.progress }.reduce(0, +) / CGFloat(count)
    }
}

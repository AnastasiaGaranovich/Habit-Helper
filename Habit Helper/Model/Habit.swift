import UIKit

enum HabitType {
    case goodHabit
    case badHabit
}

class Habit {
    var time = Date()
    var dailyRepetitions = 0
    var habitName = ""
    var habitColor = UIColor.white
    var timeInterval = DateInterval()
    var habitType = HabitType.goodHabit
    
    convenience init(time: Date, habitName: String, dailyRepet: Int, habitColor: UIColor, timeInterval: DateInterval, habitType: HabitType) {
        self.init()
        self.time = time
        self.habitName = habitName
        self.dailyRepetitions = dailyRepet
        self.habitColor = habitColor
        self.timeInterval = timeInterval
        self.habitType = habitType
    }
    
    func setDateInterval(dateStart: Date, dateEnd: Date) {
        timeInterval = DateInterval(start: dateStart, end: dateEnd)
    }
}

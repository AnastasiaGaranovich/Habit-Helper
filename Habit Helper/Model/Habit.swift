import UIKit

enum HabitType {
    case goodHabit
    case badHabit
}

class Habit {
    var dailyRepetitions = 0
    var habitName = ""
    var habitColor = UIColor.white
    var repetitionRate = 0
    var timeInterval = DateInterval()
    var habitType = HabitType.goodHabit
    
    func setDateInterval(dateStart: Date, dateEnd: Date) {
        timeInterval = DateInterval(start: dateStart, end: dateEnd)
    }
    
}

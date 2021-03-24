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
    
    init(habitName: String, dailyRepet: Int, habitColor: UIColor, repetRate: Int, timeInterval: DateInterval, habitType: HabitType) {
        self.habitName = habitName
        self.dailyRepetitions = dailyRepet
        self.habitColor = habitColor
        self.repetitionRate = repetRate
        self.timeInterval = timeInterval
        self.habitType = habitType
    }
    
    func setDateInterval(dateStart: Date, dateEnd: Date) {
        timeInterval = DateInterval(start: dateStart, end: dateEnd)
    }
}

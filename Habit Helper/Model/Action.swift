import Foundation


class Action {
    var time = 0
    var habit = Habit()
    
    init(time: Int, habit: Habit) {
        self.time = time
        self.habit = habit
    }
}

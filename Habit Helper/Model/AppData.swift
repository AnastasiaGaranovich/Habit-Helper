import Foundation

class AppData {
    static var user = User()
    
    static func createUser() {
        user.email = "nastyamadness@gmail.com"
        user.password = "26fk"
        user.age = 22
        
        user.habits.append(Habit(time: Date(), habitName: "Skin care", dailyRepet: 2, habitColor:#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1), timeInterval: DateInterval(start: Date(), duration: 864000), habitType: .goodHabit))
        user.habits.append(Habit(time: Date(), habitName: "No sugar", dailyRepet: 1, habitColor: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), timeInterval: DateInterval(start: Date(), duration: 864000), habitType: .goodHabit))
        user.habits.append(Habit(time: Date(), habitName: "Smoking", dailyRepet: 1, habitColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), timeInterval: DateInterval(start: Date(), duration: 864000), habitType: .badHabit))
        
        user.animal.name = "Dzyanis"
    }
}

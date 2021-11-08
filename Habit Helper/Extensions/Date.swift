import Foundation

extension Date {
    var monthAgo: Date {
        Calendar.current.date(
            byAdding: .month,
            value: -1,
            to: self)!
    }
    
    var nextMonth: Date {
        Calendar.current.date(
            byAdding: .month,
            value: +1,
            to: self)!
    }
    
    var dayAgo: Date {
        Calendar.current.date(
            byAdding: .day,
            value: -1,
            to: self)!
    }
    
    var nextDay: Date {
        Calendar.current.date(
            byAdding: .day,
            value: +1,
            to: self)!
    }
    
    func dayShift(_ shift: Int) -> Date {
        Calendar.current.date(
            byAdding: .day,
            value: shift,
            to: self)!
    }
}

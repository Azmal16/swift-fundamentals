///This playground demonstrates the Single Responsiblity Principle (SRP) in Swift
///SRP Sates that a Class should only be responsible for one thing

import Foundation
struct Subject {
    let score: Double
}

struct MarkSheet {
    var studentId = NSUUID().uuidString
    var subjects: [Subject]
    var bonusMarksPercentage: Double = 0
    
    var totalMarks: Double {
        let total = subjects.map({$0.score}).reduce(0, { $0 + $1 })
        let bonusMarks = total * (bonusMarksPercentage / 100)
        return total + bonusMarks
    }
    
    
}

struct MarksPrinter {
    let markSheet: MarkSheet
    func printMarks() {
        print("---------------")
        print("Stu")
    }
}

// Exercise 3: Modeling Students with Structs, Protocols, and Extensions

// 1. Create a protocol called Scorable
// The protocol should require a property called `score` of type Int? (optional)
protocol Scorable {
    var score: Int? { get }
}

// 2. Create a class called Person
// The class should have a property called `name` of type String
// Add an initializer to set the name
class Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

// 3. Create a struct called Student
// The struct should conform to Scorable
// It should have a property called `person` of type Person
// It should have a property called `score` of type Int?
// Add an initializer that takes name and optional score
struct Student: Scorable {
    let person: Person
    var score: Int?

    init(name: String, score: Int? = nil) {
        self.person = Person(name: name)
        self.score = score
    }
}

// 4. Create an extension on Student
// Add a computed property called isPassing
// It should return true if score >= 60, false otherwise
extension Student {
    var isPassing: Bool {
        return (score ?? 0) >= 60
    }
}

// 5. Create a protocol extension for Scorable
// Add a method called scoreDescription() -> String
// If score exists, return "Score: <score>"
// If score is nil, return "No score available"
extension Scorable {
    func scoreDescription() -> String {
        if let score = self.score {
            return "Score: \(score)"
        } else {
            return "No score available"
        }
    }
}

// 6. Create an array of students using the previous names and scores
// Include Ethan with no score
var students: [Student] = [
    Student(name: "Alice", score: 85),
    Student(name: "Bob", score: 92),
    Student(name: "Charles", score: 78),
    Student(name: "Diana", score: 90),
    Student(name: "Ethan") // no score
]

// 7. Create a function called printPassingStudents(students: [Student])
// It should print the names of students who are passing
func printPassingStudents(students: [Student]) {
    for student in students {
        if student.isPassing {
            print(student.person.name)
        }
    }
}

// 8. Call scoreDescription() on each student and print the result
for student in students {
    print("\(student.person.name): \(student.scoreDescription())")
}

// 9. Call printPassingStudents() to print passing students
print("Passing Students:")
printPassingStudents(students: students)

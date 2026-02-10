var students: [String] = ["Alice", "Bob", "Charles", "Diana", "Ethan"]

var scores: [String: Int] = [
    "Alice": 85,
    "Bob": 92,
    "Charles": 78,
    "Diana": 90
]

// 1. Function to print total number of students
@MainActor
func printStudentCount() {
    print("Total students: \(students.count)")
}

// 2. Function to get a student's score
@MainActor
func getScore(for student: String) -> Int? {
    return scores[student]
}

// 3. Function to print a student's score
@MainActor
func printStudentScore(for student: String) {
    if let score = getScore(for: student) {
        print("\(student)'s score: \(score)")
    } else {
        print("\(student) has no recorded score.")
    }
}

// 4. Function to get high scorers
@MainActor
func getHighScorers(minScore: Int) -> [String] {
    var highScorers: [String] = []
    for student in students {
        if let score = getScore(for: student), score >= minScore {
            highScorers.append(student)
        }
    }
    return highScorers
}

// 5. Test the functions

// Print total student count
printStudentCount()

// Print scores for each student
for student in students {
    printStudentScore(for: student)
}

// Get and print high scorers (80+)
let highScorers = getHighScorers(minScore: 80)
print("High scorers (80+): \(highScorers)")

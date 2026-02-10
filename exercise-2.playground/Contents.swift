var students: [String] = ["Alice", "Bob", "Charles", "Diana", "Ethan"]

var scores: [String: Int] = [
    "Alice": 85,
    "Bob": 92,
    "Charles": 78,
    "Diana": 90
]

// 1. Create a function called printStudentCount()
// The function should print: "Total students: <count>"

// 2. Create a function called getScore(for student: String) -> Int?
// The function should return the student's score if it exists,
// or nil if the student has no score.

// 3. Create a function called printStudentScore(for student: String)
// Use the getScore funcation
// If the student has a score, print: "<student>'s score: <score>"
// If the student has no score, print: "<student> has no recorded score."

// 4. Create a function called getHighScorers(minScore: Int) -> [String]
// The function should return an array of students whose scores are greater than or equal to minScore.

// 5. Call each function to test that it works correctly.
// printStudentCount()
// Print scores for each student
// Print high scorers (80+)

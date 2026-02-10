var students: [String] = ["Alice", "Bob", "Charlie", "Diana", "Ethan"]

var scores: [String: Int] = [
    "Alice": 85,
    "Bob": 92,
    "Charlie": 78,
    "Diana": 90
]

// 1. Print the first and last student in the array
if let first = students.first, let last = students.last {
    print("First student: \(first)")
    print("Last student: \(last)")
}

// 2. Add two new students to the array
students.append("Fiona")
students.append("George")

// 3. Update "Charlie" to "Charles" in both the students array and scores dictionary
if let index = students.firstIndex(where: { $0 == "Charlie" }) {
    students[index] = "Charles"

    if let charlieScore = scores["Charlie"] {
        scores["Charles"] = charlieScore
        scores.removeValue(forKey: "Charlie")
    }
}

// 4. Remove "Bob" from the array
students.removeAll(where: { student in
    return student == "Bob"
})

// 5. Check if "Ethan" has a score using if let
// If Ethan has a score, print: "Ethan's score: <score>"
// If Ethan has no score, print: "Ethan has no recorded score."
if let ethanScore = scores["Ethan"] {
    print("Ethan's score: \(ethanScore)")
} else {
    print("Ethan has no recorded score.")
}

// 6. Sort the students alphabetically
students.sort()

// 7. Count the total number of students, print: "Total students: studentsCount"
print("Total students: \(students.count)")

// 8. Create a new array containing students with scores above 80
// (use a loop and if let)
// print the new array: "High scorers: <newArray>"
var highScorers: [String] = []

for student in students {
    if let score = scores[student], score > 80 {
        highScorers.append(student)
    }
}

print("High scorers: \(highScorers)")

// 9. Print each student's name and score
// If a student does not have a score, print "No score available"
for student in students {
    if let score = scores[student] {
        print("\(student): \(score)")
    } else {
        print("\(student): No score available")
    }
}

// 10. Print the final student list with index numbers
for (index, student) in students.enumerated() {
    print("\(index + 1). \(student)")
}

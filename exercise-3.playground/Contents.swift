// Exercise 3: Modeling Students with Structs, Protocols, and Extensions

// 1. Create a protocol called Scorable
// The protocol should require a property called `score` of type Int? (optional)


// 2. Create a class called Person
// The class should have a property called `name` of type String
// Add an initializer to set the name


// 3. Create a struct called Student
// The struct should conform to Scorable
// It should have a property called `person` of type Person
// It should have a property called `score` of type Int?
// Add an initializer that takes name and optional score


// 4. Create an extension on Student
// Add a computed property called isPassing
// It should return true if score >= 60, false otherwise


// 5. Create a protocol extension for Scorable
// Add a method called scoreDescription() -> String
// If score exists, return "Score: <score>"
// If score is nil, return "No score available"


// 6. Create an array of students using the previous names and scores
// Include Ethan with no score


// 7. Create a function called printPassingStudents(students: [Student])
// It should print the names of students who are passing


// 8. Call scoreDescription() on each student and print the result


// 9. Call printPassingStudents() to print passing students

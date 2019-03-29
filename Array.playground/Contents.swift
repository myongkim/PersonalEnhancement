import UIKit

var str = "Hello, playground"
// a data structure


var apps: [String] = ["Reminders", "Mail", "Xcode","Calendar", "Camera"]

// Type of an array: [String]
// element
// type of an element inside the array: String
// index
// ["Reminders", "Mail", "Xcode","Calendar", "Camera"]
// 0                1      2         3           4
// 5 elements

// first index: 0
// last index: # of elements - 1

let firstApp = apps[0]
let camera = apps[4]
let calendar = apps[3]

//let error = apps[9]

let numberofApps = apps.count
let lastIndex = numberofApps - 1
let lastElement = apps[lastIndex]

var todos = ["Film TIB Video", "Go shopping", "work out"]
todos.append("Hold a webinar")
todos.append("Play badminton")
todos.append("Make Coffee")
todos.append("Tody the house")

var lastTodo = todos[todos.count - 1]
// dynamic programming

var grades = [100, 98, 80,83]
let totalGrade = grades[0] + grades[1] + grades[2] + grades[3]
let numberOfGrades = grades.count
let averageGrades = Double(totalGrade) / Double(numberOfGrades) // casting from integer to double

let name = "Isaac Kim"
let transcript = "\(name) has a total grade of \(totalGrade) with the GPA of \(averageGrades)"
print(transcript)

var contacts = ["David", "Tracy", "Brendon", "Chalene", "Miley"]
let numberOfContacts = contacts.count

let firstContact = contacts[0]
let lastContact = contacts[numberOfContacts - 1]

contacts.append("Michelle")
contacts.append("Lisa")
print(lastContact)

var newTotalGrade = 0
grades.forEach { (grade) in
    newTotalGrade += grade
}
print(newTotalGrade)




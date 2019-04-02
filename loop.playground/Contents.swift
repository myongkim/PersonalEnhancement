import UIKit

var str = "Hello, playground"

print("I love you")

// range 1...100
1...100

for _ in 1...100 {
    print("I love you")
    
}

var grades = [100, 92, 57, 9,99]

// it can do one by one
// to do sum of the grades
//var sum = grades[0] + grades[1] ...

func sum(arrayInt: [Int]) -> Int {
    var sum = 0
    
    for grades in arrayInt {
        sum += grades
    }

    print(sum)
    return sum
    
}

sum(arrayInt: grades)


var anotherWayNumbers: [Int] = []

var randomNumbers = [Int]()
//Int.random(in: 0...100000)

for j in 1...1000 {
    let randomNumber = Int.random(in: 0...100000)
    randomNumbers.append(randomNumber)
//    print(randomNumbers)
}

randomNumbers
let lastIndex = randomNumbers.count - 1

// make the number no more bigger than min
var min = Int.max

for i in 0...lastIndex {
    let currentNumber = randomNumbers[i]
    if currentNumber < min {
        min = currentNumber
    }
}

min


// function

let grade1 = 90
let grade2 = 88
let grade3 = 93

let sumGrades = grade1 + grade2 + grade3
let avgGraes = Double(sumGrades) / 3.0

print(avgGraes)

// ***

let age1 = 20
let age2 = 39
let age3 = 2
let avgAges = Double(age1 + age2 + age3) / 3.0

// DRY = Do not Repeat Yourself
// Encapsulate

func average(num1: Int, num2: Int, num3: Int) -> Double {

    let total = num1 + num2 + num3
    let average = Double(total) / 3.0
    
    return average
    
}


let ex1 = average(num1: 30, num2: 50, num3: 80)
print(ex1)

let ex2 = average(num1: 90, num2: 88, num3: 93)
print(ex2)

var numbers = [1]
for _ in 0...1000 {
    numbers.append(Int.random(in: 1...100000000))
}

numbers

func largeAverage(numbers: [Int]) -> Double {
    
    var sum = 0
    for i in numbers {
        sum = sum + i
        
    }
    
    return Double(sum) / Double(numbers.count)
}

largeAverage(numbers: numbers)


func calculateTipFor(billBeforeTax: Double, taxPercentage: Double, tipPercentage: Double) -> Double {
    
    let tax = billBeforeTax * taxPercentage / 100.0
    let totalBill = billBeforeTax + taxPercentage
    return totalBill * tipPercentage / 100.0
    
}


func maxNumberFinder(numbers: [Int]) -> Int {
    var max = Int.min
    
    for i in 0..<numbers.count {
        if numbers[i] > max {
            max = numbers[i]
        }
    }
    return max
    
}

maxNumberFinder(numbers: numbers)



class User {
    var userName: String = ""
    var fullName: String = ""
    var email: String = ""
    
}

class Person {
    var name: String = ""
    var country: String = ""
    var motherName: String = ""
    
}




































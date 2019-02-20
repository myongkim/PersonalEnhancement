import UIKit


// basic

// 1. conditional statement

/***************************************************
 if <#condition#> {
 <#code#>
 }
 
 if <#condition#> {
 <#statements#>
 } else {
 <#statements#>
 }
 
 - condition 은 Bool 값 (true, false)
 ***************************************************/

// if

var temperatureInFahrenheit = 30

if temperatureInFahrenheit <= 30 {
    print("It's very cold. Consider wearing a scarf")
}

temperatureInFahrenheit = 40

if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider earing a scarf.")
} else {
    print("It's not that cold. Wear a t-shirt")

}

temperatureInFahrenheit = 72
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
}

///===

// switch statement
/*:
 ---
 ## switch Statements
 ---
 */
/***************************************************
 switch <#value#> {
 case <#value 1#>:
 <#respond to value 1#>
 case <#value 2#>,
 <#value 3#>:
 <#respond to value 2 or 3#>
 default:
 <#otherwise, do something else#>
 }
 
 - switch 문은 가능한 모든 사례를 반드시 다루어야 함 (Switch must be exhaustive)
 ***************************************************/

print("\n===============[switch statements]========================\n")

let alphabet: Character = "a"

switch alphabet {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    // invalid, the case has an empty body
    break
    // print("Some other charater")
}

print("\n===============[Interval Matching]========================\n")

let approximateCount = 30

switch approximateCount {
case 0...50:
    print("0 ~ 50")
case 51...100:
    print("51 ~ 100")
    
default:
    print("something else")
}

// compound cases

let someCharater: Character = "e"

switch someCharater {
case "a", "e", "i", "o", "u":
    print("\(someCharater) is vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p":
    print("\(someCharater) is constant")
default:
    print("\(someCharater) is not a vowel or a constant")
}

// value binding

let stillAnotherPoint = (9, 0)

switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}


// where clause

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

let isTrue = true

switch isTrue {
case true:
    print("true")
case false:
    print("false")
}


// fallthrough

print("\n===============[ fallthrough ]========================\n")

let integerToDescription = 5
var description = "The number \(integerToDescription) is"

switch integerToDescription {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}

print(description)

// early exit : guard statement

func update1(age: Int) {
    guard 0...100 ~= age
        //    , age == 100
        else { return }
    print("Pass")
}
update1(age: 2)
update1(age: -1)
update1(age: 100)



//두 개의 정수를 입력받아 두 수를 하나의 숫자로 이어서 합친 결과를 출력하는 함수 (1, 5 입력 시 15 반환)

func addition(firstNumber: Int, secondNumber: Int) -> Int {
    var total = 0
    total = firstNumber + secondNumber
    return total
}

addition(firstNumber: 1, secondNumber: 5)


//문자열 두 개를 입력받아 두 문자열이 같은지 여부를 판단해주는 함수
func checkSameWord(firstWord: String, secondWord: String) -> Bool {
    
    if firstWord == secondWord {
        print("\n===============[ true ]========================\n")
        return true
    } else {
        print("\n===============[ false ]========================\n")
        return false
    }
}
checkSameWord(firstWord: "hello", secondWord: "hello")
checkSameWord(firstWord: "not Same", secondWord: "of course")

//학점을 입력받아 각각의 등급을 반환해주는 함수 (4.5 = A+,  4.0 = A, 3.5 = B+ ...)


func checkGrade(grade: Double) -> String {
    var description = ""
    switch grade {
    case 4.5:
         description += "A+"
    case 4.0:
        description += "A"
    case 3.5:
        description += "B+"
    case 3.0:
        description += "B"
    case 2.5:
        description += "C+"
    case 2.0:
        description += "C"
        
        fallthrough
    default:
        description += " is your grade"
       
    }
    print(description)
    return description
}
checkGrade(grade: 4.0)

//세 수를 입력받아 세 수의 곱이 양수이면 true , 음수이면 false 반환하는 함수  (switch - where clause 사용할 것)

func multipleOfThree(FirstNumber: Int, SecondNumber: Int, ThirdNumber: Int) -> Bool {
    
    let multiple = FirstNumber * SecondNumber * ThirdNumber
    switch multiple {
    case multiple where multiple >= 0 :
        return true
    case multiple where multiple < 0 :
        return false
    default:
        return true
    }
    
}
multipleOfThree(FirstNumber: 3, SecondNumber: 5, ThirdNumber: -11)


//특정한 달을 숫자로 입력 받아 문자로 반환해주는 함수 (1 = "Jan" , 2 = "Feb")

func monthConverter(month: Int) -> String {
    
    switch month {
    case 1:
        return "Jan"
    case 2:
        return "Feb"
    case 3:
        return "March"
        
    default:
        return "It may be April to December or others"
    }
    
}
monthConverter(month: 4)

//윤년 구하기 (2월 29일이 있는 해.  매 4년 마다 윤년. 매 100년 째에는 윤년이 아님. 매 400년 째에는 윤년)

func lunarYearFinder(year: Int) {
    
    switch year {
    case year where year % 4 == 0 && year % 100 != 0 :
        print("\n===============[ Lunar Year ]========================\n")
    default:
        print("\n===============[ Not a Lunar Year ]========================\n")
    }
    
}

lunarYearFinder(year: 4)



//////////////////////

// For - In Loop
print("\n===============[ for ]========================\n")


/***************************************************
 for item in <#items#> {
 <#code#>
 }
 ***************************************************/

for index in 2...5 {
    print("\(index) times 5 is \(index * 5)")
}

// Wildcard pattern

for _ in 0...3 {
    print("hello")
}

for chr in "Hello" {
    print(chr, terminator: " ")
}
print()

let list = ["Swift", "programming", "Language"]
for str in list {
    print(str)
}

//for 문을 이용하여 3 의 10 제곱에 대한 결과값을 표현하는 코드 구현
let base = 3
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}
print(answer)



//for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현



for num in (1...10).reversed() {
    print(num, terminator: " ")
}


// while Loops

print("\n===============[ while ]========================\n")

/***************************************************
 while <#condition#> {
 <#code#>
 }
 
 - 루프를 통과하는 각 패스의 시작 부분에서 조건을 평가
 ***************************************************/


// add 1 to 100
var num = 0
var sum = 0

while num <= 100 {
    sum += num
    num += 1
}

print(sum)


/***************************************************
 repeat {
 <#code#>
 } while <#condition#>
 
 - 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
 - 다른 언어에서는 do - while 문으로 많이 사용
 ***************************************************/


num = 0
sum = 0

repeat {
    sum += num
    num += 1
} while num <= 100

print(sum)


//1 ~ 9 사이의 숫자를 입력받아 해당 숫자에 해당하는 구구단의 내용을 출력하는 함수

func multiplicationToNine(number: Int) {
    
    
    for num in 1...9 {
        print(num * number, terminator: " ")
        
    }
    
}
multiplicationToNine(number: 8)


//정수 하나를 입력받아 그 수의 Factorial 을 구하는 함수

func factorial(number: Int) {
    var answer = 1
    
    for num in 1...number {
        answer *= num
        print(answer)
    }
    
}
factorial(number: 5)


//정수 두개를 입력받아 첫 번째 수를 두 번째 수의 횟수만큼 곱한 값을 반환하는 함수

func calculationForFirstNumber(firstNumber: Int, SecondNumber: Int) {
    
    var answer = firstNumber
    
    for i in 1...SecondNumber {
        answer *= i
        
    }
    print(answer)
}
calculationForFirstNumber(firstNumber: 4, SecondNumber: 5)


//정수 하나를 입력받아 각 자리수 숫자들의 합을 반환해주는 함수

func addThemUp(number: Int) {
    
    var answer = 0
    
    for i in 1...number {
    
        answer += i
        
    }
    print(answer)
}

addThemUp(number: 5)


//100 이하의 자연수 중 3과 5의 공배수를 모두 출력하는 함수


func fuzzBizz() {
 
    for i in 1...100 {
        if i % 3 == 0 && i % 5 == 0 {
            print(i, terminator: " ")
        } else if i % 3 == 0 {
            print(i, terminator: " ")
        } else if i % 5 == 0 {
            print(i, terminator: " ")
        }
       
        
    }
    
}

fuzzBizz()


print()

//===
//How would you transform [0,3,2,1] to ["three","three","three", "two","two","one"] in Swift?

func changeArrayOfNumber(array: [Int]) {

   var sortedArray = Array(array.sorted().reversed())
    sortedArray.popLast()

    
    for i in 0...sortedArray.count {
        if sortedArray.contains(i) {
            sortedArray.append(i)
        }
    }
    
    sortedArray.append(3)
    sortedArray.sorted().reversed()
    sortedArray.popLast()
    print(sortedArray)
    
}
changeArrayOfNumber(array: [0,3,2,1])



//////

// Tuples

let number: Int = 10

//let threeNumbers: (Int, Int, Int) = (1, 2, 5)
//type(of: threeNumbers)
//
//threeNumbers
//
//threeNumbers.0
//threeNumbers.1
//threeNumbers.2

("1", 1) < ("3.14", 99)
    
("일", 1) > ("이", 2.0)
    
//(1, "zebra") < ("2", "apple")

("blue", -1) < ("purple", 1)
    
//("blue", false) < ("purple", true)





func transformer(_ array: [Int]) -> [String] {
        
        var spellArray: Array<String> = []
        
        for element in array {
            let numberForTimes = element
            let spellFormatNumber = NumberFormatter.localizedString(from: NSNumber(value: element), number: .spellOut)
            
            for _ in 0..<numberForTimes {
                spellArray.append(spellFormatNumber)
            }
        }
        
        return spellArray
}


transformer([0,3,2,5])

func transformArray(array: [Int]) -> [String] {
    
    var modifiedArray: [String] = []
    
    for element in array {
        let numberOfTimes = element
        let spellFormatNumber = NumberFormatter.localizedString(from: NSNumber(value: element), number: .spellOut)
        
        for _ in 0..<numberOfTimes {
            modifiedArray.append(spellFormatNumber)
        }
    }
    return modifiedArray
    
}

transformArray(array: [3,0,2,1,5])







import UIKit

var str = "Hello, playground"


/*
If it has both input and output (function)
If it has input but not Output (Generator)
If it has input but not output (consumer)
 
 
*/

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
    
}

greet(person: "Anna")

func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}

addNumbers(a: 30, b: 40)

// Default parameter values
func functionWithoutDefult(paramWithoutDefault: Int, paramWithDefault: Int = 12) -> Int {
    return paramWithDefault
}
functionWithoutDefult(paramWithoutDefault: 3, paramWithDefault: 6)

functionWithoutDefult(paramWithoutDefault: 4)
// always to be 12, since the default will be 12. It did not specify the default value.


// it can have multiple numbers and do not matter in this situation since we are making array of inputs
func arithmeticMean(_ numbers: Double...) -> Double {
    var total = 0.0
    
    for numbers in numbers {
        total += numbers
    }
    
    return total / Double(numbers.count)
}

arithmeticMean(1,5,10,15,20)


// Function without parameters
func sayHelloWord() -> String {
    return "hello, world"
}

sayHelloWord()


//Nested Functions
// function within function

func chooseStepFunction(backward: Bool, value: Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    if backward {
        return stepBackward(input: value)
    } else {
        return stepForward(input: value)
    }
}

chooseStepFunction(backward: true, value: 5)


// 이름을 입력 값으로 받아서 출력하는 함수
func greetingName(name: String) -> String {
    return "Hello, " + name
}

greetingName(name: "Isaac")
// 나이를 입력 값으로 받아서 출력하는 함수

// 나이를 입력 값으로 받아서 출력하는 함수
func age(age: Int) -> Int {
    
    return age
}

age(age: 30)

// 이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
func introductionNameAndAge(name: String, age: Int) -> String {
    return "Hello my name is \(name) and my age is \(age)"
    
}
introductionNameAndAge(name: "Peter", age: 25)


// 정수를 하나 입력받아 2의 배수 여부를 반환하는 함수

func doublingDown(initialInteger: Int) -> Int {
    return initialInteger * 2
}
doublingDown(initialInteger: 2)



//정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
let defaultValue = 10
func multipleOfTwo(FirstNum: Int, SecondNum: Int = defaultValue) -> Int {
    return FirstNum * SecondNum
    
}
multipleOfTwo(FirstNum: 30)




// 4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
func averageScore(firstScore: Int, secondScore: Int, thirdScore: Int, fourthScore: Int) -> Int {
    return (firstScore + secondScore + thirdScore + fourthScore) / 4
}

func avergeScores(scores: Double...) -> Double {
    var total = 0.0
    for score in scores {
        total += score
    }
    return total
}



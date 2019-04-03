import UIKit

var str = "Hello, playground"

/*
이름을 입력 값으로 받아서 출력하는 함수
나이를 입력 값으로 받아서 출력하는 함수
이름과 나이를 입력 받아 자신을 소개하는 글을 출력하는 함수
정수를 하나 입력받아 2의 배수 여부를 반환하는 함수
정수를 두 개 입력받아 곱한 결과를 반환하는 함수 (파라미터 하나의 기본 값은 10)
4과목의 시험 점수를 입력 받아 평균 값을 반환해주는 함수
*/



func introduction(name: String) -> String {
    
  return "Hello, My name is \(name)"
}
introduction(name: "Isaac")


func age(age: Int) -> Int {
    
    return age
}

func introduceMyself(name: String, age: Int) -> String {
    return "Hello, My name is \(name). My age is \(age)"
    
}

func double(rawNumber: Int) -> Int {
    return rawNumber * 2
    
}

func multiple(firstNumber: Int, secondDefault: Int = 10) -> Int {
    
    return firstNumber * secondDefault
}

multiple(firstNumber: 50)
multiple(firstNumber: 30, secondDefault: 20)


var score = [90, 80, 70, 60]

func average(arrayNum: [Int]) -> Int {
    
    var total = 0
    
    for score in arrayNum {
        total += score
    }
    let average = total / arrayNum.count
    print(arrayNum.count)
    return average
}

average(arrayNum: score)



enum Temperature {
    
    case celcius(Double)
    case fahrenheit(Double)
    case kelvin(Double)
    
    
    func toCelcius() -> Double {
        switch self {
        case .celcius(let value): return value
        case .fahrenheit(let value): return (value - 32) * 5 / 9
        case .kelvin(let value): return value + 273
        }
    }
    
}

var temperature: Temperature = .celcius(52)
temperature.toCelcius()

temperature = .fahrenheit(108)
temperature.toCelcius()


import UIKit



func fizzBuzz(num: Int) -> String {

    if num % 3 == 0 && num % 5 == 0 {
        
        return "FizzBuzz"
    } else if num % 5 == 0 {
        return "Buzz"
    } else if num % 3 == 0 {
        return "Fizz"
    } else {
        return "\(num)"
    
}

}

//for i in 1...100 {
//    print(fizzBuzz(num: i))
//
//}

func fizzBuzz2(_ num: Int) -> String {
    switch num {
    case _ where num % 15 == 0: return "FizzBuzz"
    case _ where num % 3 == 0: return "Fizz"
    case _ where num % 5 == 0: return "Buzz"
        
    default: return "\(num)"
    }
    
}

print(fizzBuzz2(100))
for i in 1...100 {
    print(fizzBuzz2(i))
}


func isPalindrome(_ text: String) -> Bool {
    var text = text
    for _ in 0..<(text.count / 2) {
        let left = text.removeFirst()
        let right = text.removeLast()
        guard left == right else { return false}
        
    }
    return true
}

isPalindrome("hello")
isPalindrome("heleh")

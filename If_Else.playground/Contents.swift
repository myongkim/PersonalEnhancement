import UIKit

var str = "Hello, playground"

// Boolean - true or false

1 < 2

var condition = 1 < 2

condition = 7 > 9
condition = ( "7" == "a string")

var myName = "Isaac Kim ajsdkf"
let numberOfCharaters = myName.count
print(numberOfCharaters)
let isLongName = numberOfCharaters > 10

if isLongName {
    print("You have a long name!")
} else {
    print("Oh, it's okay.")
}

var groceryList = ["broccoli", "noodles", "beef"]
let newItem = "chicken"

groceryList.contains(newItem)

if groceryList.contains(newItem) {
    print("you already added the item to the list!")
} else {
    groceryList.append(newItem)
    print("item added!")
    print("your new sholing list is now: \(groceryList)")
}

// Code Challenge

var age = 15
if age < 13 {
    print("you must be older than 13 years ol to use this app.")
} else {
    let enteredUsername = "isaacKim".lowercased()
    let enteredPassedword = "test123"
    
    let correctUsername = "isaackim"
    let correctPassword = "test123"
    
//    if enteredUsername == correctUsername {
//        if enteredPassedword == correctPassword {
//            print("Now you can join the game!")
//        } else {
//            print("you entered wrong username / password")
//        }
//        } else {
//        print("you entered wrong username / password")
//
//        }
    if (enteredUsername == correctUsername) && (enteredPassedword == correctPassword) {
         print("Now you can join the game!")
    } else {
        print("you entered wrong username / password")
    }
}


true && true
true && false
false && false

true || true
false || true
true || false
false || false


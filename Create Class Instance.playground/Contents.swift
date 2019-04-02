import UIKit

var str = "Hello, playground"

// class, User is the name of the class
class User {
  // Stored Properties, instance variables
  var username: String = ""
  var fullname: String = ""
  var email: String = ""
}

// process of creating an instance
let currentUser = User()

// use the dot notation to access and change its properties
currentUser.email = "david@mywallie.com"
currentUser.email
currentUser.email = "support@teamwallie.com"
currentUser.fullname = "David Tran"
currentUser.username = "dtran"


func sum(num1: Int, num2: Int) -> Int {
  return num1 + num2
}

let a = sum(num1: 1, num2: 2)

func sayHello() {
  print("Hey!")
}

sayHello()


class Post {
  var text: String = ""
  var username: String = ""
}

let newPost = Post()
newPost.text = "Hey there, it's David!"
newPost.username = currentUser.username







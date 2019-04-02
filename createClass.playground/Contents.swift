import UIKit

var str = "Hello, playground"

class Post {
    var text: String
    let username: String
    var likers: [User] = []
    var comments: [Comment] = []
    
    
    init(text: String, username: String) {
        self.text = text
        self.username = username
        
    }
    
    func liked(by user: User){
        likers.append(user)
    }
    
    func comment(with comment: Comment) {
        comments.append(comment)
    }
    
    func getAlllikers() -> String {
        var result = ""
        
        for liker in likers {
            if result == "" {
                result += liker.username
            } else {
                result += ", \(liker.username)"
            }
        }
        return result
    }
    
    func getAllCommenters() -> String {
        var result = ""
        
        for comment in comments {
            let commenter = comment.user
            if result == "" {
                result += commenter.username
            } else {
                result += ", \(commenter.username)"
                
            }
            
        }
        return result
    }
    
    func getPoints() -> Int {
        var points = likers.count * 5
        
        for comment in comments {
            let text = comment.text.lowercased()
            if text.contains("dork") || text.contains("stupid") || text.contains("mean") {
                points -= 3
            } else {
                points += 10
            }
        }
        return points
    }
    
    
    
}

class User {
    var username: String
    var fullname: String
    var email: String
    var posts: [Post] = []
    
    
    init(username: String, fullname: String, email: String) {
        self.username = username
        self.fullname = fullname
        self.email = email
    }
    
    func signUpSucessfullly() -> Bool {
        print("Mkaing a sign up request to our server")
        print("...")
        print("Sign up successfully!")
        print("Welcome \(username)")
        print("A comfirmation email has been sent to \(email)")
        return true
    }
    
    func loginSuccessfully() -> Bool {
        print("Making a request to login user with username: \(username) and email: \(email)")
        print("...")
        print("Login successfully")
        return true
    }
    
    func post(newPost: Post) {
        self.posts.append(newPost)
    }
}


class Comment {
    var text: String
    var user: User
    
    init(text: String, user: User) {
        self.text = text
        self.user = user
    }
    
}


let isaac = User(username: "isaac", fullname: "Isaac Myong Kim", email: "myong328@gmail.com")

let tracy = User(username: "tracy", fullname: "tracy", email: "yracy@gmail.com")

isaac.signUpSucessfullly()


func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}



var myPost = Post(text: "Hello what a beautiful Day", username: isaac.username)



isaac.post(newPost: myPost)
print(isaac.posts)

isaac.loginSuccessfully()
myPost.liked(by: isaac)

myPost.liked(by: tracy)
myPost.getAlllikers()


import UIKit


class Dog {
    var color = "White"
    var eyeClor = "Black"
    var height = 30.0
    var weight = 6.0
    
    func sit() {
        print("Sit")
    }
    
    func layDown() {
        print("LayDown")
        
    }
    
    func shake() {
        print("Shake")
    }
    
}

let bobby: Dog = Dog()
bobby.color = "Gray"
bobby.sit()

let tori = Dog()
tori.color = "Brown"
tori.sit()
tori.layDown()

class Quadrangle {
    var witdh: Int
    var height: Int
    
    init(width: Int, height: Int){
        self.witdh = width
        self.height = height
    }
    
    func measureArea() -> Int {
        let area = self.witdh * self.height
        return area
    }

}

var rectangle = Quadrangle(width: 10, height: 5)
rectangle.measureArea()
var square = Quadrangle(width: 7, height: 7)
square.measureArea()


class TV {
    var channel: Int
    var volume: Int
    var turnOn: Bool
    
    init(channel: Int, volume: Int, turnOn: Bool) {
        self.channel = channel
        self.volume = volume
        self.turnOn = turnOn
    }
    
    func tvSetting() {
        
        if turnOn {
            channel += 1
            
        } else {
            print("nothing happens")
        }
        
    }
    func turnOnOff() {
        turnOn.toggle()
    }
}
var tvPlay = TV(channel: 5, volume: 5, turnOn: false)
tvPlay.channel
tvPlay.tvSetting()
tvPlay.turnOnOff()
tvPlay.tvSetting()
tvPlay.turnOn
tvPlay.channel







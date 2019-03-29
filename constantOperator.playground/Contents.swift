import UIKit

var str = "Hello, playground"


var billBeforeTax = 50.0
var taxPercentage = 0.06
var numberOfPeople: Int = 2

billBeforeTax = 59.95
var tipPercentage = 15.0
tipPercentage = 0.09

let taxAmount = billBeforeTax * taxPercentage
let totalBill = billBeforeTax + taxAmount
var tipAmount: Double = totalBill * tipPercentage / 100

tipAmount = (billBeforeTax + taxAmount) * tipPercentage / 100.0

var name: String = "Isaac"
var verb: String = "loves"
var noun = "Swift"

name = "Hanna"
verb = "excels"

let newSentence = name + " " + verb + " at " + noun
let username = "Isaac Kim"

let numberOfFriends = 500
let owner = "his"


let text = "\(username) has \(numberOfFriends) friends on \(owner) facebook page."
print(text)


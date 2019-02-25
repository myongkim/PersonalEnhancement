import UIKit

var str = "Hello, playground"
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        
        let arr = Array(J)
        var count = 0
        for string in S {
            if arr.contains(string) {
                count = count + 1
            }
        }
        
        return count

    }
}

//Solution.numJewelsInStones("hello", "world")

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    
    let arr = Array(J)
    print(arr)
    var count = 0
    for string in S {
        if arr.contains(string) {
            count = count + 1
        }
    }
    
    return count
    
}

numJewelsInStones("hello", "world")



func numJewelsInStonesReal(Jewel: String, Stone: String) -> Int {
    
    let array = Array(Jewel)
    var count = 0
    
    for jewel in Stone {
        if array.contains(jewel) {
            count += 1
        }
    }
    
    
    
    return count
}

numJewelsInStones("helsdfdle", "world")




































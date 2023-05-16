//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var a  =   "abocabh"
//Set<Char> ->
// for loop
//for loop

//char.contain()



//char.se -> boc
//substring.app(a)

var b  =  "abcabcde"
//For loop
//if charset.contains
//find end range
//





//else
//append char into charset
var aray : [Int] = []
let queue  = DispatchQueue(label: "com.lavel.serial")
queue.async {
    for i in 0..<10 {
        aray.append(i)
    }
    print(aray)
}

queue.async {
    for i in 10..<20 {
        aray.append(i)
    }
    print(aray)
}
print("Calling node")


////// FIXME: -
///// FIXME: -


func lengthOfLongestSubstring(_ s: String) -> Int {
    var longest = 0
    var startIndex = 0
    var charMap = [Character: Int]()
    
    for (index, char) in s.enumerated() {
        if let foundIndex = charMap[char] {
            startIndex = max(foundIndex+1, startIndex)
        }
        longest = max(longest, index - startIndex + 1)
        charMap[char] = index
    }
    
    return longest
}

/**let queue = DispatchQueue(label:"seriel")
 queue.async {
     print("async")
 }
 queue.sync {
     print("sync")
 }
 print("next")?*/

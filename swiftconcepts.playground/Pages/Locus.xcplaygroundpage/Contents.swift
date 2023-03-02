//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Locus

//
/*
var myList   =    [1,2,3,4,5]
myList = myList.myCompactmap({ar})
print(myList)

extension Array {
    func myCompactmap<T>(array : [T],_ transform : (T) -> T?) -> [T] {
        var result : [T] = []
        for eachElement in _array {
            if let nonNilElement  =  transform(eachElement) {
                result.append(nonNilElement)
            }
        }
        return result
    }
}
*/
var a : String
var b : String!
var c  : String?


final class SharedManager {
    
    private static let shared = SharedManager()
    
    private init () {
        
    }
    
    
}



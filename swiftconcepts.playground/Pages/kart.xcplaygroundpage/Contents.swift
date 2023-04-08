//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


extension Collection {
    func myMap<T>(_ transform : (Element) -> T) -> [T] {
        var result : [T] = []
        for eachElement in self {
            let transformable  = transform(eachElement)
            result.append(transformable)
        }
        return result
    }
}
var array  =  ["1", "2", "3", "4" ,"5"]
var dictionary = ["key1" : "1","key2" : "2","key3" : "3"]

var ab  = ""

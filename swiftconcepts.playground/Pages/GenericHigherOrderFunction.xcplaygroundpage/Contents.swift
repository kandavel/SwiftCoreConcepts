//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//https://medium.com/free-code-camp/a-behind-the-scenes-look-at-map-filter-and-reduce-in-swift-1991f5c7bc80
//https://medium.com/@akgandotra90/custom-implementation-of-higher-order-functions-in-swift-7e077c9f81d0

extension Collection {
    func myMap<T>(_ transform : (Element) -> T) -> [T] {
     var result : [T] = []
     for eachItem in self {
         result.append(transform(eachItem))
      }
     return result
    }
    
    func myCompactmap<T>(_ transform : (Element)-> T?) -> [T] {
        var result : [T] = []
        for eachItem in self {
            if let nonNilElement  = transform(eachItem) {
                result.append(nonNilElement)
            }
        }
        return result
    }
    
    func myFilter(_ transform : (Element) -> Bool) -> [Element] {
        var result : [Element] = []
        for eachItem  in self {
            print(eachItem)
            if transform(eachItem) {
                print(eachItem)
                result.append(eachItem)
            }
        }
        return result
    }
    
    func myReduce<T>(_ intialValue : T, tranform : (T,Element) -> T) -> T {
        var result   = intialValue
        for eachItem in self {
            result  =  tranform(result,eachItem)
        }
        return result
    }
}

//Demo
let mymapArray = [1,2,3,4,5].myMap({$0 * 3})
let myCompactMap = ["1", "2", "shdh"]
print(myCompactMap.myCompactmap{Int($0)})
let myFilterArray = [1,2,3,4,5].myFilter({$0 % 2 == 0})
let myreduce = [1,2,3,4,5].myReduce(2) { result, element in
     result * element
}
[1,2,3,4,5].reduce(100) { partialResult, eachElement in
    partialResult + eachElement
}

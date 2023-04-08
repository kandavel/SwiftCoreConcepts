//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

////: [Next](@next)
//
///*
//func find(sub : String) -> Bool {
//    let main = "kandavel"
//    if main.contains(sub) {
//        print("Substring present")
//        return true
//    }
//    else if  {
//
//    }
//    else {
//        print("Substring not present")
//    }
//    return false*/
//}
//*/
//find(sub: "kan")


//kan - true
//vel  - true
//kavel - false
//velka  - true

//enum Direction {
//    case north
//    case south
//    case west
//    case east
//}
//
//func navigate(currentLocation : ,direction : Direction) {
//    let dicrection  = currentLocation + direction
//}

//[1,2,3,4,5]
func mycompute(array : [Any]) -> [Int] {
    return array.compactMap { (eachElement) in
        if let intElement  = eachElement as?  Int {
            return intElement * intElement
        }
        return nil
    }.filter({$0 % 2  == 0 })
}
let array  = mycompute(array: [1,2,3,4,5, "kanda"])


//

func myDeferFunction() -> Bool {
    for i in 0..<10 {
        print("Printing Element:: \(i)")
    }
    defer {
        print("1 defer")
        defer {
            print("2 defer")
            defer {
                print("21 defer")
            }
            defer {
                print("22 defer")
                defer {
                    print("221 defer")
                }
                defer {
                    print("222 defer")
                }
            }
        }
        defer {
            print("3 defer")
        }
    }
    
    return true
}

myDeferFunction()

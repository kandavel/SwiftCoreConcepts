//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)




protocol MobileOS {
    associatedtype Version
    var version: Version { get }
    init(version: Version)
}

class A : MobileOS {
    var version: Int
    
    required init(version: Int) {
        self.version  = version
    }
    
    typealias Version = Int
    
    
    
    
}

class B : MobileOS {
    var version: String
    
    required init(version: String) {
        self.version  = version
    }
    
    typealias Version = String
}

func returnOpagueType() -> some  MobileOS {
    return A(version : 5)
}


//Check if pair with given Sum exists in Array
//[1,3,2,5,4]

func additionOfTwoSum(array :  [Int],targetSum : Int) -> Bool {
    var result : Bool = false
    var i = 0
    var j = array.count - 1
    
    while i < j  {
        for k in i + 1 ... j  {
            if array[i] + array[k] == targetSum {
                result = true
                return result
            }
        }
        i = i + 1
    }
    return result
}

let queue = DispatchQueue(label: "come.seria", attributes: .concurrent)
 queue.async {
     print("async")
 }
 queue.sync {
     print("sync")
 }
 print("next")


class Rectangle {
    var width: Int
    var height: Int

    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }

    func area() -> Int {
        return width * height
    }
}

class Square: Rectangle {
    override var width: Int {
        didSet {
            super.height = width
        }
    }

    override var height: Int {
        didSet {
            super.width = height
        }
    }
    
    override func area() -> Int {
        return width * width
    }
}


let square : Rectangle = Square(width: 10, height: 10)
let rectangle: Rectangle = square
//rectangle.height = 7
//rectangle.width = 5
print(rectangle.area())

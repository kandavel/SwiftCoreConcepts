//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
protocol Walkable {
    func walk(numOfSteps:Int)
}
extension Walkable {
    func walk(numOfSteps:Int) {
        print("Extension of Walkable")
    }
}

protocol Runnable {
    func run(howFarInMiles:Float)
}

extension Runnable {
    func run(howFarInMiles:Float) {
        print("Extension of Runnnable")
    }
}

protocol Doggable: Walkable, Runnable {
    func bark(times : Int)
}

extension Doggable {
    func bark(times : Int  = 5) {
        print("Extension of Doggable  -> \(times)")
    }
}

class Dog: Doggable {
    
    func walk(numOfSteps:Int) {
        print("Dog will walk \(numOfSteps) steps")
    }

    func run(howFarInMiles:Float) {
        print("Dog will run \(howFarInMiles) miles")
    }

    func bark(times : Int  = 6) {
        print("Woof -> \(times)")
    }
}

class FrenchDog:Dog {
    override func bark(times : Int  = 7) {
        super.bark()
        print("Le woof -> \(times)")
    }
    
    override func walk(numOfSteps:Int) {
        print("walk le Dog")
    }
    
}

var dog : Doggable  = Dog()
var leDog : Dog = FrenchDog()
dog.bark() // Woof
leDog.bark(times: 9) // Le woof
leDog.walk(numOfSteps: 10)


class Dog1: Doggable {
    
    func walk(numOfSteps:Int) {
        print("Dog will walk \(numOfSteps) steps")
    }

    func run(howFarInMiles:Float) {
        print("Dog will run \(howFarInMiles) miles")
    }

    func bark(times : Int  = 6) {
        print("Woof -> \(times)")
    }
}

protocol P1 {
    func method()
    //some other methods
}
protocol P2 {
    func method()
    //some other methods
}

extension P1 {
    
}
extension P2 {
    
}

struct S: P1, P2 {
    func method() {
            
    }
}

var nonZeroArrayList : [Int] = []
var zeroList : [Int] = []

func moveZerosToRight(_ arr: inout [Int]) {
    var nonZeroIndex = 0
    for i in 0..<arr.count {
        if arr[i] != 0 {
            let temp = arr[nonZeroIndex]
            arr[nonZeroIndex] = arr[i]
            arr[i] = temp
            nonZeroIndex += 1
        }
    }
}
var array = [0, 1, 0, 3, 12]
moveZerosToRight(&array)

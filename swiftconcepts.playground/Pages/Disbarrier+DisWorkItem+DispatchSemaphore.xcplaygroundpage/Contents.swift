//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//userInteractiveEmoji1

let userInteractiveEmoji2  = "\n🚗\n"
let userInteractiveEmoji1  = "\n☎️\n"
let userInteractiveEmoji3  = "\n📲\n"

let bgtiveEmoji1  = "\n🚗\n"
let bgtiveEmoji2  = "\n🚕\n"
let bgtiveEmoji3  = "\n🚙\n"

func callDogEmojisInForLoop(dogEmoji : String,lowerLimit : Int,uppearLimit : Int) {
    for _ in lowerLimit...uppearLimit {
        print(dogEmoji)
    }
}

func callStarEmojisInForLoop(dogEmoji : String,lowerLimit : Int,uppearLimit : Int) {
    for _ in lowerLimit...uppearLimit {
        print(dogEmoji)
    }
}

func callAppleEmojisInForLoop(dogEmoji : String,lowerLimit : Int,uppearLimit : Int) {
    for _ in lowerLimit...uppearLimit {
        print(dogEmoji)
    }
}

let workItem  =  DispatchWorkItem {
    callDogEmojisInForLoop(dogEmoji: bgtiveEmoji1, lowerLimit: 0, uppearLimit: 3)
    callDogEmojisInForLoop(dogEmoji: bgtiveEmoji2, lowerLimit: 0, uppearLimit: 3)
    callDogEmojisInForLoop(dogEmoji: bgtiveEmoji3, lowerLimit: 0, uppearLimit: 3)
}
var array : [Int] = []
let dispatchQueue  =  DispatchQueue(label: "com.DispatchQueue.Barrier", qos: .userInitiated, attributes: .concurrent)
dispatchQueue.async {
    print(array.count)
}

dispatchQueue.async {
    for i in 0 ... 5 {
        print(i)
        array.append(i)
    }
    print(array)
}

dispatchQueue.async {
    for i in 5 ... 10 {
        array.append(i)
    }
    print(array)
}

dispatchQueue.async(flags: .barrier) {
    for i in 0..<2 {
        array.remove(at: i)
    }
    print(array)
}
dispatchQueue.async {
    print("Not printing till barrier is fineshed")
    print(array.count)
}


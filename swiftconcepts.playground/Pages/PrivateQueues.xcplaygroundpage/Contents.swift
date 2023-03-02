//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let userInteractiveEmoji1  = "⚽️\n"
let userInteractiveEmoji2  = "🎱\n"
let userInteractiveEmoji3  = "🎾\n"

let bgtiveEmoji1  = "\n🚗\n"
let bgtiveEmoji2  = "\n🚕\n"
let bgtiveEmoji3  = "\n🚙\n"

let myPrivateQOSConCurrentQueue  =  DispatchQueue(label: "User interactive", qos: .default, attributes: .concurrent)
let myPrivateQOSConCurrentQueue2  =  DispatchQueue(label: "background",qos: .background,attributes: .concurrent)

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

func callQOSConcurrentQueue() {
    print("Entering \(myPrivateQOSConCurrentQueue.label)\n")
    print("\nOutside Calling is Main thread",Thread.isMainThread)
    myPrivateQOSConCurrentQueue.async {
        print("\n Inside Calling  1st st  \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callDogEmojisInForLoop(dogEmoji : userInteractiveEmoji1,lowerLimit : 0,uppearLimit : 2)
    }
    myPrivateQOSConCurrentQueue.async {
        print("\n Innside Calling  3nd st  \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callAppleEmojisInForLoop(dogEmoji : userInteractiveEmoji2,lowerLimit : 0,uppearLimit : 2)
    }
    myPrivateQOSConCurrentQueue.async {
        print("\n Innside Calling  2nd st   \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callStarEmojisInForLoop(dogEmoji : userInteractiveEmoji3,lowerLimit : 0,uppearLimit : 2)
    }
    print("Ending  \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue\n")
}

func callQOSConcurrentQueue2() {
    print("Entering \(myPrivateQOSConCurrentQueue2.label)2\n")
    print("\nOutside Calling is Main thread",Thread.isMainThread)
    myPrivateQOSConCurrentQueue2.async {
        
        print("\n Inside Calling  1st st  \(myPrivateQOSConCurrentQueue2.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callDogEmojisInForLoop(dogEmoji : bgtiveEmoji1,lowerLimit : 0,uppearLimit : 4)
    }
    myPrivateQOSConCurrentQueue2.async {
        print("\n Inside Calling  1st st  \(myPrivateQOSConCurrentQueue2.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callAppleEmojisInForLoop(dogEmoji : bgtiveEmoji2,lowerLimit : 0,uppearLimit : 4)
    }
    myPrivateQOSConCurrentQueue2.async {
        print("\n Inside Calling  1st st  \(myPrivateQOSConCurrentQueue2.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callStarEmojisInForLoop(dogEmoji : bgtiveEmoji3,lowerLimit : 0,uppearLimit : 4)
    }
    print("Ending \(myPrivateQOSConCurrentQueue2.label)) ConCurrentQueue2\n")
}

callQOSConcurrentQueue()
callQOSConcurrentQueue2()




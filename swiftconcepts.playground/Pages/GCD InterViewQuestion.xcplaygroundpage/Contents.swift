//: [Previous](@previous)


import UIKit

var greeting = "Hello, playground"

//: [Next](@next)
//MainQueu,
//GlobalQueue
//CustomQueue

let dogemoji  : String = "\n🐶\n"
let starEmoji  : String  = "\n🌠\n"
let appleEMoji  = "\n🍓🍎\n"

let userInteractiveEmoji1  = "⚽️\n"
let userInteractiveEmoji2  = "🎱\n"
let userInteractiveEmoji3  = "🎾\n"

let bgtiveEmoji1  = "\n🚗\n"
let bgtiveEmoji2  = "\n🚕\n"
let bgtiveEmoji3  = "\n🚙\n"

let myPrivateSerialQueue  =  DispatchQueue(label: "com.MyAppSerialQueue.SerialQueue")
let myPrivateConCurrentQueue  =  DispatchQueue(label: "com.concurrentQueue.concurrent",attributes: .concurrent)
let myPrivateQOSConCurrentQueue  =  DispatchQueue(label: "User interactive", qos: .userInteractive, attributes: .concurrent)
let myPrivateQOSConCurrentQueue2  =  DispatchQueue(label: "background",qos: .userInitiated,attributes: .concurrent)


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

//Main thread Serial execution
func callDispatchQueue() {
    print("Calling")
    print("Outside Calling is Main thread",Thread.isMainThread)
    DispatchQueue.main.async {
        print(" 1 DispatchQueue.main.async is Main thread",Thread.isMainThread)
        DispatchQueue.main.async {
            print(" 2 DispatchQueue.main.async is Main thread",Thread.isMainThread)
            callDogEmojisInForLoop(dogEmoji : dogemoji,lowerLimit : 0,uppearLimit : 5)
        }
        DispatchQueue.main.async {
            print(" 3 DispatchQueue.main.async is Main thread",Thread.isMainThread)
            callStarEmojisInForLoop(dogEmoji : starEmoji,lowerLimit : 0,uppearLimit : 5)
        }
    }
}

//glonbal Queue execution
func callGlobalDispatchQueue() {
    print("OutsideCalling")
    print("\nOutside Calling is Main thread",Thread.isMainThread)
     DispatchQueue.global().sync {
         print("\n 1 DispatchQueue.global().async is Main thread",Thread.isMainThread)
        DispatchQueue.global().async {
            print("\n 2 DispatchQueue.global().async is Main thread",Thread.isMainThread)
            callDogEmojisInForLoop(dogEmoji : dogemoji,lowerLimit : 0,uppearLimit : 5)
        }
        DispatchQueue.global().async {
            print("\n3 DispatchQueue.global().async is Main thread",Thread.isMainThread)
            callStarEmojisInForLoop(dogEmoji : starEmoji,lowerLimit : 0,uppearLimit : 5)
        }
        
        print("InsidesideCalling")
    }
}

func callPrivateSerialQueue() {
    print("Entering SerialQueue\n")
    print("\nOutside Calling is Main thread",Thread.isMainThread)
    print("Entering 1 statement\n")
    myPrivateSerialQueue.async {
        print("\n Inside Calling  i st seralQueue is Main thread",Thread.isMainThread)
        callDogEmojisInForLoop(dogEmoji : dogemoji,lowerLimit : 0,uppearLimit : 5)
    }
    
    myPrivateSerialQueue.async {
        print("\n Innside Calling  i st seralQueue is Main thread",Thread.isMainThread)
        callStarEmojisInForLoop(dogEmoji : starEmoji,lowerLimit : 0,uppearLimit : 5)
    }
    print("Ending SerialQueue\n")
}

func callPrivateConcurrentQueue() {
    print("Entering ConCurrentQueue\n")
    print("\nOutside Calling is Main thread",Thread.isMainThread)
    print("Entering 1 statement\n")
    myPrivateConCurrentQueue.async {
        print("\n Inside Calling  1st st ConCurrentQueue is Main thread",Thread.isMainThread)
        callDogEmojisInForLoop(dogEmoji : dogemoji,lowerLimit : 0,uppearLimit : 5)
    }
    myPrivateConCurrentQueue.async {
        print("\n Innside Calling  3nd st ConCurrentQueue is Main thread",Thread.isMainThread)
        callAppleEmojisInForLoop(dogEmoji : appleEMoji,lowerLimit : 0,uppearLimit : 5)
    }
    myPrivateConCurrentQueue.async {
        print("\n Innside Calling  2nd st ConCurrentQueue is Main thread",Thread.isMainThread)
        callStarEmojisInForLoop(dogEmoji : starEmoji,lowerLimit : 0,uppearLimit : 5)
    }
   
    print("Ending ConCurrentQueue\n")
}

func callQOSConcurrentQueue() {
    print("Entering \(myPrivateQOSConCurrentQueue.label)\n")
   // print("\nOutside Calling is Main thread",Thread.isMainThread)
    myPrivateQOSConCurrentQueue.async {
       // print("\n Inside Calling  1st st  \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callDogEmojisInForLoop(dogEmoji : userInteractiveEmoji1,lowerLimit : 0,uppearLimit : 100)
    }
    myPrivateQOSConCurrentQueue.async {
        //print("\n Innside Calling  3nd st  \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callAppleEmojisInForLoop(dogEmoji : userInteractiveEmoji2,lowerLimit : 0,uppearLimit : 15)
    }
    myPrivateQOSConCurrentQueue.async {
       // print("\n Innside Calling  2nd st   \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
        callStarEmojisInForLoop(dogEmoji : userInteractiveEmoji3,lowerLimit : 0,uppearLimit : 115)
    }
    print("Ending  \(myPrivateQOSConCurrentQueue.label) ConCurrentQueue\n")
}

func callQOSConcurrentQueue2() {
    print("Entering \(myPrivateQOSConCurrentQueue2.label)2\n")
    print("\nOutside Calling is Main thread",Thread.isMainThread)
    myPrivateQOSConCurrentQueue2.async {
        sleep(15)
        callDogEmojisInForLoop(dogEmoji : bgtiveEmoji1,lowerLimit : 0,uppearLimit : 15)
    }
    myPrivateQOSConCurrentQueue2.async {
        
        callAppleEmojisInForLoop(dogEmoji : bgtiveEmoji2,lowerLimit : 0,uppearLimit : 15)
    }
    myPrivateQOSConCurrentQueue2.async {
        
        callStarEmojisInForLoop(dogEmoji : bgtiveEmoji3,lowerLimit : 0,uppearLimit : 15)
    }
    print("Ending \(myPrivateQOSConCurrentQueue2.label)) ConCurrentQueue2\n")
}





class Emoji {
    init() {
        
    }
}
let emoji  =  Emoji()
//callGlobalDispatchQueue()
//callPrivateSerialQueue()
//callPrivateConcurrentQueue()
callQOSConcurrentQueue2()

callQOSConcurrentQueue()











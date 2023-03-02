//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let  dispatchGroup1 = "\n📱\n"  // utility
let dispatchGroup2  = "\n☎️🚕\n" // background
let dispatchGroup3  = "\n📺\n"   // useriteractive 5


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

let workerQueue = DispatchQueue(label: "com.thinkandlearn.Aakash" , qos: .userInitiated)
let userDataDownloadGroup = DispatchGroup()
print("\n Outside Calling  1st st  \(workerQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
/*workerQueue.async(group: userDataDownloadGroup, execute: {
    print("\n Inside Calling  1st st  \(workerQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
    userDataDownloadGroup.enter()
    DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 0.5) {
        callDogEmojisInForLoop(dogEmoji: dispatchGroup1, lowerLimit: 0, uppearLimit: 5)
        userDataDownloadGroup.leave()
    }
    
    userDataDownloadGroup.enter()
    DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 1) {
        callDogEmojisInForLoop(dogEmoji: dispatchGroup2, lowerLimit: 0, uppearLimit: 10)
        userDataDownloadGroup.leave()
    }
    
    userDataDownloadGroup.enter()
    DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 2) {
        callDogEmojisInForLoop(dogEmoji: dispatchGroup3, lowerLimit: 0, uppearLimit: 20)
        userDataDownloadGroup.leave()
    }
    
    print("\n Inside Calling  1st st  \(workerQueue.label) ConCurrentQueue is Main thread",Thread.isMainThread)
})*/

userDataDownloadGroup.enter()
print("\n userDataGroup",Thread.isMainThread)
DispatchQueue.global().async(qos: .default) { // phone
    print("\n wat type of thread",Thread.isMainThread)
    callDogEmojisInForLoop(dogEmoji: dispatchGroup1, lowerLimit: 0, uppearLimit: 5)
    userDataDownloadGroup.leave()
}

userDataDownloadGroup.enter()
DispatchQueue.global().async(qos: .userInitiated) { //telephone
    print("\n wat type of thread",Thread.isMainThread)
    callDogEmojisInForLoop(dogEmoji: dispatchGroup2, lowerLimit: 0, uppearLimit: 10)
    userDataDownloadGroup.leave()
}
print("kandavel")
userDataDownloadGroup.enter()
DispatchQueue.global().async(qos: .userInteractive) { // tv
    print("\n wat type of thread",Thread.isMainThread)
    callDogEmojisInForLoop(dogEmoji: dispatchGroup3, lowerLimit: 0, uppearLimit: 20)
    userDataDownloadGroup.leave()
}
print("lova")

userDataDownloadGroup.notify(queue: .main) {
    print("\n userDataGroup",Thread.isMainThread)
    print("All the task is finished")
}

//userinteractive
//userintated
//default
//utility
//background


//lova ramakrishna -> lovaRamakrishna
// 3 , 3  -> 6
protocol AdditionProtocol {
    func additionOfTwoVlaues(param : Self) -> Self
}

extension String  : AdditionProtocol {
    func additionOfTwoVlaues(param: String) -> String {
        return  self + param
    }
}

extension Double  : AdditionProtocol {
    func additionOfTwoVlaues(param: Double) -> Double {
        return self + param
    }
}

extension Int  : AdditionProtocol {
    func additionOfTwoVlaues(param: Int) -> Int {
        return self +  param
    }
}
4.additionOfTwoVlaues(param: 5)
4.5.advanced(by: 5.0)
"lova".additionOfTwoVlaues(param: "Krishna")

//Generic
//Protool
//Opaque Type
//Objc

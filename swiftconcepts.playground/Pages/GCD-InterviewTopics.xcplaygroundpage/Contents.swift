//: [Previous](@previous)

import Foundation

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true
/*
var value: Int = 20
let serialQueue = DispatchQueue(label: "com.queue.Serial")

func doAsyncTaskInSerialQueue() {
        for i in 1...3 {
            serialQueue.async {
            if Thread.isMainThread{
                print("task running in main thread")
            }else{
                print("task running in other thread")
            }
            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("\(i) finished downloading")
        }
    }
}
serialQueue.async {
    for i in 0...3 {
        value = i
        print("\(value) ✴️")
    }
}
doAsyncTaskInSerialQueue()
print("Last line in playground 🎉")
/* Serial queue + async */
///////////////////// FIXME: -*/

/*
var value1: Int = 20
let serialQueue1 = DispatchQueue(label: "com.queue.Serial")

func doSyncTaskInSerialQueue1() {
        for i in 1...3 {
            serialQueue1.sync {
            if Thread.isMainThread{
                print("task running in main thread")
            }else{
                print("task running in other thread")
            }
            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("\(i) finished downloading")
        }
    }
}

doSyncTaskInSerialQueue1()

serialQueue1.async {
    for i in 0...3 {
        value1 = i
        print("\(value1) ✴️")
    }
}

print("Last line in playground 🎉")
/* serial queue  + sync + async */
*/

///// FIXME: -ConcurrentQueue + async
var value: Int = 20
let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)

func doAsyncTaskInConcurrentQueue() {
        for i in 1...3 {
            concurrentQueue.sync {
            if Thread.isMainThread{
                print("task running in main thread")
            }else{
                print("task running in other thread")
            }
            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("\(i) finished downloading")
        }
    }
}

doAsyncTaskInConcurrentQueue()

concurrentQueue.async {
    for i in 0...3 {
        value = i
        print("\(value) ✴️")
    }
}

print("Last line in playground 🎉")
 //Concurrent queue  + sync + async */
/*
print("Statement 1")
DispatchQueue.global().async {
    print("Statement 2")
    DispatchQueue.main.sync {
        print("Statement 3")
    }
    print("Statement 4")
    DispatchQueue.main.async {
        print("Statement 5")
    }
    print("Statement 6")
}
print("Statement 7")*/

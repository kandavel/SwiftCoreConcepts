import Foundation
////: [Previous](@previous)
//
//import Foundation
//
//var greeting = "Hello, playground"
//
////: [Next](@next)
//import Foundation
//let queue = OperationQueue()
//queue.maxConcurrentOperationCount = 1
//
//let op1 = BlockOperation(block: {
//  print("implementing op1")
//})
//
//let op2 = BlockOperation(block: {
//  print("implementing op2")
//})
//
//let op3 = BlockOperation(block: {
//  print("implementing op3")
//})
//let op4 = BlockOperation(block: {
//  print("implementing op4")
//})
//
//
////op1.addDependency(op2)
//op1.queuePriority = .veryHigh
//queue.addOperation(op2)
//queue.addOperation(op4)
//queue.addOperation(op1)
//queue.addOperation(op3)
//queue.waitUntilAllOperationsAreFinished()
//
///*
//for element in 0..<10 {
//    print("outside for loop ::\(element)")
//    DispatchQueue.global().sync {
//    print("ssyncBefore  :: \(element)")
//   // Thread.sleep(forTimeInterval: 1)
//    print("ssyncAfter  :: \(element)")
//        print("---------\n------------")
//        DispatchQueue.global().sync {
//            print("AsyncBefore  :: \(element)")
//            //Thread.sleep(forTimeInterval: 1)
//            print("AsyncAfter  :: \(element)")
//        }
//   }
//}*/
let operationQueue  = OperationQueue()
operationQueue.maxConcurrentOperationCount = 1

let fetchop1  = BlockOperation {
    print("fetch op1 is doing")
}
fetchop1.completionBlock = {
    print("fetch operation1 is completed")
}

let fetchop2  = BlockOperation {
    print("fetch op2 is doing")
}
fetchop2.completionBlock = {
    print("fetch operation2 is completed")
}

let fetchop3  = BlockOperation {
    print("fetch op3 is doing")
}
fetchop3.completionBlock = {
    print("fetch operation3 is completed")
}

let fetchop4  = BlockOperation {
    print("fetch op4 is doing")
}
fetchop4.completionBlock = {
    print("fetch operation4 is completed")
}

let fetchop5  = BlockOperation {
    print("fetch op5 is doing")
}
fetchop5.completionBlock = {
    print("fetch operation5 is completed")
}
fetchop5.queuePriority = .normal
fetchop1.queuePriority = .normal
fetchop2.queuePriority = .veryHigh
fetchop1.addDependency(fetchop2)
operationQueue.addOperation(fetchop1)
operationQueue.addOperation(fetchop2)
operationQueue.addOperation(fetchop3)
operationQueue.addOperation(fetchop4)
operationQueue.addOperation(fetchop5)


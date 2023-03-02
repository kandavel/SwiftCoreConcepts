import UIKit

var greeting = "Hello, playground"
//GCD,Dispatch Queue,NsOperation Queue

//print("Before Delay 1")
//DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//    print("After delay")
//    DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(500)) {
//        print("async after 500 milliseconds")
//    }
//}
//print("After Delay 2")
//print("After Delay 3")


let jan1Data  = 1674176470   //- yesterday
let jan1End  = 1674212410    // today
let currentDate = Int(Date().timeIntervalSince1970)
print(currentDate)

print(jan1Data <= currentDate )
print(jan1End >= currentDate)


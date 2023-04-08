//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
Write a Function that takes 2 Parameters of a Generic Type as input and returns the Sum of these Parameters.
Input 1: “hello”, “world”
Output 1: “helloworld”
Input 2: 10, 20
Output 2: 30
Input 3: 2.4, 3.6
Output 3: 6.0
*/

protocol Additionalbale {
    func addtionbleTwoSum(input2 : Self) -> Self
}
extension Int : Additionalbale  {
    func addtionbleTwoSum(input2: Int) -> Int {
        return self + input2
    }
}
extension String  :  Additionalbale {
    func addtionbleTwoSum(input2: String) -> String {
        return self + input2
    }
}
func additionOfInput<T : Additionalbale>(_ input1 : T ,_input2 : T) -> T {
    return input1.addtionbleTwoSum(input2: _input2)
}
let a  = additionOfInput(5, _input2: 6)
let b  = additionOfInput("hello", _input2: "world")


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
print("Statement 7")

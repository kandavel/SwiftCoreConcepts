//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//closure for value type
var name = "kandavel"
let closure  = { [name] in
    print(name)
}
name = "kandavel name checking"
closure()

import Foundation

class Person {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    
    func closureWithCaptureList() {
        var p1: Person? = self
        let closure: (Person) -> Void = { _ in
            DispatchQueue.global().asyncAfter(deadline: .now()+3) {
                print("name in closure is \(p1?.name)")
            }
        }
        closure(p1!)
        p1?.name = "Varsha kandavel"
        p1 = nil
        print("name is \(p1?.name ?? "person object is deallocated")")
    }
}


func closureWithoutCaptureList() {
    var p1: Person? = Person("varsha")
    let closure: (Person) -> Void = { _ in
        DispatchQueue.global().asyncAfter(deadline: .now()+3) {
            print("name in closure is \(p1?.name ?? "person object is deallocated") ")
        }
    }
    p1?.name = "Varsha kandavel"
    closure(p1!)
    p1 = nil
    print("name is \(p1?.name ?? "person object is deallocated")")
}


let p  = Person("kandavel")
p.closureWithCaptureList()
//closureWithoutCaptureList()

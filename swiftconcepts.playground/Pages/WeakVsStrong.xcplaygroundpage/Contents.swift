//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//
class Student {
    var school : School?
}

class School {
    var student : Student?
}

class Person {
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
    
    deinit {
        print("Its get deallocated")
    }
}

print(CFGetRetainCount(Person(firstName: "Neel", lastName: "Bakshi")))
var person : Person? = Person(firstName: "Neel", lastName: "Bakshi")
print(Unmanaged.passUnretained(person!).toOpaque())
print(CFGetRetainCount(person))
weak var person1 : Person? = person
print(CFGetRetainCount(person1))
print(Unmanaged.passUnretained(person1!).toOpaque())
weak var person2 : Person? = person
print(CFGetRetainCount(person2))
print(Unmanaged.passUnretained(person2!).toOpaque())


person2 = person
print(CFGetRetainCount(person))
print(CFGetRetainCount(person2))
print(Unmanaged.passUnretained(person2!).toOpaque())
person = nil
person1  = nil
person2  = nil

//print(CFGetRetainCount(person))
//print(CFGetRetainCount(person1))
//print(CFGetRetainCount(person2))

//let studentobj  =  Student()

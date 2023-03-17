//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// A.swift

class WeakClass<T : AnyObject> {
    weak var wekaVar : T?
    init(value : T) {
        self.wekaVar = value
    }
}

class MyClass {}


var weakly : [WeakClass<MyClass>] = [WeakClass(value: MyClass()),WeakClass(value: MyClass())]

class Weak<T: AnyObject> {
  weak var value : T?
  init (value: T?) {
    self.value = value
  }
}

class Stuff {
    var intValue  = 5
}

extension Array where Element:Weak<AnyObject> {
  mutating func reap () {
    self = self.filter { nil != $0.value }
  }
}


var weakly1 : [Weak<Stuff>] = [Weak(value: Stuff()), Weak(value: Stuff())]
weakly1.reap


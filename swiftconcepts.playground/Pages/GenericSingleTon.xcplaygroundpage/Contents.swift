//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
import Foundation

protocol Addable {
     func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Addable {}
extension Float: Addable {}
extension String: Addable {}

final class ThreadSafeSingleton {
    private static var instance: ThreadSafeSingleton?
    private static let lock = NSRecursiveLock()

    private init() {}

    static func sharedInstance() -> ThreadSafeSingleton {
        lock.lock()
        defer { lock.unlock() }

        if let instance = instance {
            return instance
        } else {
            let newInstance = ThreadSafeSingleton()
            instance = newInstance
            return newInstance
        }
    }

    func add<T: Addable>(_ a: T, _ b: T) -> T {
        return a + b
    }
}

// Usage Example:

let singleton = ThreadSafeSingleton.sharedInstance()

let intResult = singleton.add(3, 5)
print(intResult)

let stringResult = singleton.add("Hello, ", "World!")
print(stringResult)


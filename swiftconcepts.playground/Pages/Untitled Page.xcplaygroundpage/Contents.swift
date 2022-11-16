//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
protocol ViewModelDelegate : class {
    func add()
    func multiplyIntegers()
}
extension ViewModelDelegate {
    func  multiplyIntegers() {}
}

class A : ViewModelDelegate {
    func add() {
        
    }
}
//SolidPrinciple

extension Collection {
    
    func myMap<T>(_ tranform : (Element) -> T) ->  [T] {
        var result : [T] = []
        for eachItem in self {
            result .append( tranform(eachItem))
        }
        return result
    }
}

//Dispatch group
//Dispatch group notify

let group  = DispatchGroup()
group.enter()
URLSession.shared.dataTask(with: URLRequest(url: URL(string: "www.google.com")!))
group.wait()


group.enter()
URLSession.shared.dataTask(with: URLRequest(url: URL(string: "www.fb.com")!))
group.wait()


group.notify(queue: .main) {
    //reload data
}
//Urlsession

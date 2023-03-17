//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

protocol MyProtocolDelegate : AnyObject {
    func printMethod1()
    func printMethod2()
}
class A : MyProtocolDelegate {
    func printMethod1() {
        
    }
    
    func printMethod2() {
        
    }
    
    
    
}

class B  {
   
    weak var delegate : MyProtocolDelegate?
    
}


extension Collection {
    
    func myMap<T>(_ transform : (Element) -> T) -> [T] {
        var result : [T] = []
        for eachItem in self {
            result.append(transform(eachItem))
        }
       return result
    }
}

protocol MyProtocolDelegate1 {
    associatedtype T
    func printMethod()
}

class Children : MyProtocolDelegate1 {
    typealias T = Double
    
    func printMethod() {
        
    }
    
    
}

class Parent : MyProtocolDelegate1 {
    
    typealias T = Int
    
    func printMethod() {
         
    }
}
/*
protocol ViewMOdelDelagte : class {
    func updateData() {}
    func notifyUI() {}
        
    }
}

//self.delegate.updateData

protocol UrlReuqestDelegate  {
    var path : String {get}
    var urlRequestDelegate : URLRequest {get}
    var header : [String : String] {get}
}


class ServiceLayer {
    
    var delegate : UrlReuqestDelegate
    
    init () {
       
    }
    
    func getListOfData(delegate : UrlReuqestDelegate) {
        
        
        
    }
}

class NetworkManager {
    
    static let shared : NetworkManager()
    
    private init() {
        
        
    }
    
    
    func get() {
        Af.request(delegate.urlRequestDelegate) {
            //
        }
        
    }
    
}

class ViewModel {
    
    var service = ServiceLayer()
    
    
    
   
    func fetchGetListOfData() {
        service.getListOfData(delegate: self)
    }
}

extension ViewModel : UrlReuqestDelegate {
    var path: String {
        <#code#>
    }
    
    var urlRequestDelegate: URLRequest {
        <#code#>
    }
    
    var header: [String : String] {
        <#code#>
    }
    
}

// Gi*/

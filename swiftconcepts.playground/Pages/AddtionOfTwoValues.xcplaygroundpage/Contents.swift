//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//https://stackoverflow.com/questions/35429007/generic-addition-function-swift
protocol GenericAdd {
    func addable(item : Self) -> Self
}

extension Int : GenericAdd {
    func addable(item: Int) -> Int {
        return self + item
    }
}

extension String : GenericAdd {
    func addable(item: String) -> String {
       return self + item
    }
}

func genericAdd<T : GenericAdd>(item1 : T,item2 : T) -> T  {
    let resultantItem  =  item1.addable(item: item2)
    return resultantItem
}

genericAdd(item1: 5, item2: 3)
genericAdd(item1: "kandavel", item2: "umapathy")

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

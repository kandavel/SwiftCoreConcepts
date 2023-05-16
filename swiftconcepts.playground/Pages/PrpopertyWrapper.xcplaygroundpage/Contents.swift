//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var a  =   "abocabh"
//Set<Char> ->
// for loop
//for loop

//char.contain()



//char.se -> boc
//substring.app(a)

var b  =  "abcabcde"
//For loop
//if charset.contains
  //find end range
  //





//else
  //append char into charset
var aray : [Int] = []
let queue  = DispatchQueue(label: "com.lavel.serial")
queue.async {
    for i in 0..<10 {
        aray.append(i)
    }
    print(aray)
}

queue.async {
    for i in 10..<20 {
        aray.append(i)
    }
    print(aray)
}
print("Calling node")


@propertyWrapper
struct Base64Encoding {
    private var value = ""
    
    var wrappedValue: String {
        get { Data(value.utf8).base64EncodedString() }
        set { value = newValue }
    }
}

struct MyClass {
    @Base64Encoding var id : String
}

var p = MyClass()
p.id = "Property Wrapper"
print(p.id)

class A {
    var str1: String!
    var str2: String?
    var str3: String
    
    init() {
        self.str3 = ""
       // self.str1  = "Force"
       // self.str2 =
    }
    
}
let aa  = A()
//aa.str1  = "Force"
//aa.str2  = "Optional"
//print(aa.str1!)
//print(aa.str2!)
//print(aa.str3)

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Hack {
    var platform: String
    let claps: Int
    
    init(platform: String, claps: Int) {
            self.platform = platform
            self.claps = claps
        }
}

let constantBlog = Hack(platform: "ios", claps: 140)
constantBlog.platform = "android"
constantBlog.claps = 150

var variableBlog = Hack(platform: "ios", claps: 140)
variableBlog.platform = "android"
variableBlog.claps = 150

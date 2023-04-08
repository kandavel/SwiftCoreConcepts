//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

class Node {
    var data : Int
    var next : Node?
    
    init(data  : Int, address : Node? = nil) {
        self.data  = data
        self.next  = address
    }
}
class MylinkedList {
    var head : Node?
    var tail : Node?
    
    func isCheckListEmpty() -> Bool {
        return head == nil
    }
    
    func getFirstNode() -> Node? {
        return  head
    }
    
    func getLastNode() -> Node? {
        if var node  = head {
            while let next  =  node.next {
                node  = next
            }
            return node
        }
        else {
            return nil
        }
    }
    
    func prependNewnode(value : Int) {
        let node  =  Node(data: value)
        guard self.head != nil  else  {
            self.head  = node
            self.head  = node
            return
        }
        node.next = self.head
        self.head  = node
    }
    
    func appendNewnode(value : Int) {
        let node  =  Node(data: value)
        guard self.head != nil  else  {
            self.head  = node
            self.head  = node
            return
        }
        self.tail?.next = node
        self.tail  = node
    }
    
    func getLength() -> Int {
        var count  = 0
        guard  self.head != nil else {
            return 0
        }
        var temp  = self.head
        while temp != nil {
            count = count + 1
            temp  = temp?.next
        }
        return count
    }
    
    func findValue(value : Int) -> Int? {
        var current  = self.head
        
        while current != nil {
            if current?.data == value {
                return current?.data
            }
            current  = current?.next
        }
      return nil
    }
    
    
}

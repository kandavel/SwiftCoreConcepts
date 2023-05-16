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




class LinkedNode<T> {
    var next: LinkedNode<T>?
    var value: T
    
    init(next: LinkedNode<T>?, value: T) {
        self.next = next
        self.value = value
    }
    
    func printList() {
        var currentNode = self
        print(value)
        while currentNode.next != nil {
            print("Current NodeValue ::\(currentNode.value)")
            currentNode = currentNode.next!
            print("1Current NodeValue ::\(currentNode.value)")
        }
    }
    
}

func reverseList(_ head: LinkedNode<Int>?) -> LinkedNode<Int>? {
    var previousNode: LinkedNode<Int>? = nil
    var currentNode = head
    while currentNode != nil {
        print("previous node address :: \(previousNode)\n")
        print("CurrentNode  \(currentNode) Value :: \(String(describing: currentNode?.value))\n")
        let nextNode = currentNode?.next
        print("NextNode  \(nextNode) Value :: \(String(describing: nextNode?.value))\n")
        currentNode?.next = previousNode
        previousNode = currentNode
        currentNode = nextNode
    }
    return previousNode
}

//let linkedNode5 = LinkedNode(next: nil, value: 5)
//let linkedNode4 = LinkedNode(next: linkedNode5, value: 3)
//let linkedNode3 = LinkedNode(next: linkedNode4, value: 2)
//let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
//let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)
//linkedListRoot.printList()
//reverseList(linkedListRoot)?.printList()



func middleNodedetect(_ head: LinkedNode<Int>?) -> LinkedNode<Int>? {
    var (fast,slow) = (head, head)
    
    while(fast?.next != nil) {
        print("")
        print("Before Node manipulation \(fast?.value) \n")
        print("Before Node slow manipulation \(slow?.value) \n")
        fast = fast?.next?.next
        slow = slow?.next
        
        print("After Node manipulation")
        print("Before Node Fast manipulation \(fast?.value) \n")
        print("After Node  slow manipulation \(slow?.value) \n")
    }
    
    return slow
}

let linkedNode5 = LinkedNode(next: nil, value: 5)
let linkedNode4 = LinkedNode(next: linkedNode5, value: 3)
let linkedNode3 = LinkedNode(next: linkedNode4, value: 9)
let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)

let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)


let middleNode  = middleNodedetect(linkedListRoot)
middleNode?.value

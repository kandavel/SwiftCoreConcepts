//
//  DoublyLinkedList.swift
//  DSA
//
//  Created by kandavel on 19/04/23.
//

import Foundation

class DoublyLinkedNode<T> {
    var next: DoublyLinkedNode<T>?
    var value: T
    var prev : DoublyLinkedNode<T>?
    var child : DoublyLinkedNode<T>?
    
    init(next: DoublyLinkedNode<T>?, value: T) {
        self.next = next
        self.value = value
    }
    
    func printList() {
        var currentNode = self
        while currentNode.next != nil {
            print("Current NodeValue ::\(currentNode.value)")
            currentNode = currentNode.next!
            print("next NodeValue ::\(currentNode.value)\n\n")
        }
    }
    
}


class FlattenLinkedList {
    func flatten(_ head: DoublyLinkedNode<Int>?) -> DoublyLinkedNode<Int>? {
        if head == nil {return head}
        var stack = [DoublyLinkedNode<Int>]()
        var temp = head
        
        while temp != nil {
            if let child = temp?.child {
                if let next = temp?.next {
                    next.prev = nil
                    stack.append(next)
                }
                temp?.child = nil
                temp?.next = child
                child.prev = temp
            }
            if let next = temp?.next {
                temp = next
            } else if !stack.isEmpty {
                let last = stack.removeLast()
                temp?.next = last
                last.prev = temp
                temp = last
            } else {
                break
            }
        }
        return head
    }
}


func kAltReverse(_ head: LinkedNode<Int>?, _ k: Int) -> LinkedNode<Int>? {
    var current = head
    var next: LinkedNode<Int>?
    var prev: LinkedNode<Int>? = nil
    var count = 0
    
    while current != nil && count < k {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
        count += 1
    }
    
    if head != nil {
        head?.next = current
    }
    
    count = 0
    while count < k - 1 && current != nil {
        current = current?.next
        count += 1
    }
    
    if current != nil {
        current?.next = kAltReverse(current?.next, k)
    }
    
    return prev
}

func countUnsortedColumns(_ arr: [String]) -> Int {
    guard let first = arr.first else { return 0 }
    let length = first.count
    var unsortedCount = 0
    
    for i in 0..<length {
        var previousChar: Character?
        var isSorted = true
        
        for str in arr {
            let char = str[str.index(str.startIndex, offsetBy: i)]
            if let prev = previousChar, prev > char {
                isSorted = false
                break
            }
            previousChar = char
        }
        
        if !isSorted {
            unsortedCount += 1
        }
    }
    
    return unsortedCount
}

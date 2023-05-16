//
//  ViewController.swift
//  DSA
//
//  Created by kandavel on 17/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let index1  = search([4,5,6,7,0,1,2], 3)
        //        var matrix  = [[1,2,3],[4,5,6],[7,8,9]]
        //        // let rotatedMatrix =  rotate(&matrix)
        //       // let linkedNode5 = LinkedNode(next: nil, value: 5)
        //        let linkedNode4 = LinkedNode(next: nil, value: 3)
        //        let linkedNode3 = LinkedNode(next: linkedNode4, value: 9)
        //        let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
        //        let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)
        //        reverseKGroup(linkedListRoot, 2)
        let solution  = Solution()
        //let reversedWord  = solution.reverseWords("hello this is   kandavel")
        //print(reversedWord)
        
        //        let linkedNode4 = LinkedNode(next: nil, value: 3)
        //        let linkedNode3 = LinkedNode(next: linkedNode4, value: 9)
        //        let linkedNode2 = LinkedNode(next: linkedNode3, value: 2)
        //        linkedNode4.next = linkedNode2
        //        let linkedListRoot = LinkedNode(next: linkedNode2, value: 1)
        //        checkListListNodehasCycle(head: linkedListRoot)
        
//        let node1  = DoublyLinkedNode(next: nil, value: 1)
//        node1.prev = nil
//        let node2  = DoublyLinkedNode(next: node1, value: 2)
//        node2.prev = node1
//        let node3  = DoublyLinkedNode(next: node2, value: 3)
//        node3.prev = node2
//
//        let node11  = DoublyLinkedNode(next: nil, value: 11)
//        node11.prev = nil
//        let node12  = DoublyLinkedNode(next: node11, value: 12)
//        node12.prev = node11
//        let node13  = DoublyLinkedNode(next: node12, value: 13)
//        node13.prev = node12
//
//        node2.child = node11
//
//
//        let node21  = DoublyLinkedNode(next: nil, value: 21)
//        node21.prev = nil
//        let node22  = DoublyLinkedNode(next: node21, value: 22)
//        node22.prev = node11
//        let node23  = DoublyLinkedNode(next: node22, value: 23)
//        node23.prev = node22
//
//
//        node12.child = node21
//
//        let dlist  = FlattenLinkedList()
//        let flattenList =  dlist.flatten(node3)
        
        
       //let amt  = coinChange([1,2,5], 11)
       // var colors  = [2,1,2,0,1,0,2]
       // sortColors(&colors)
        
       // findKthLargestElement([3, 2, 1, 5, 6, 4], 2)
        
       // countPairs(35)
        
        
        
         let linkedNode5 = LinkedNode(next: nil, value: 4)
         let linkedNode4 = LinkedNode(next: linkedNode5, value: 2)
         let linkedNode3 = LinkedNode(next: linkedNode4, value: 1)
         let linkedNode2 = LinkedNode(next: linkedNode3, value: 10)
         let linkedListRoot = LinkedNode(next: linkedNode2, value: 3)
        
        
        let linkedNode155 = LinkedNode(next: nil, value: 6)
        let linkedNode156 = LinkedNode(next: linkedNode155, value: 12)
        let linkedNode15 = LinkedNode(next: linkedNode156, value: 1)
        let linkedNode14 = LinkedNode(next: linkedNode15, value: 14)
        let linkedNode13 = LinkedNode(next: linkedNode14, value: 8)
        let linkedNode12 = LinkedNode(next: linkedNode13, value: 3)
        let linkedListRoot11 = LinkedNode(next: linkedNode12, value: 5)
        
        //kAltReverse(linkedListRoot11, 3)
        
       // countUnsortedColumns(["cba", "dah", "ghi"])
        
       // insertionSortList(linkedListRoot11)
        
        
       // insertionSort([5, 3, 8, 1, 12, 7, 6])
       // longestSubstring("pwwkew")
        
//        subarraySum([1, 3, 4, 2, 5, 3], 6)
//        let s  = SubstringSolution()
//        s.countSubstrings("abbc")
        
//        let s  = UniquePathSolution()
//        s.uniquePathsWithObstacles([[0,0,0],[0,1,0],[0,0,0]])
//       // s.uniquePathsWithObstacles()
        
        let minPathSolutiuon = MinPathSumSolution().minPathSum()
    }
    
    
    func longestSubstring(_ s: String) -> String {
        var longest = ""
        var current = ""
        var charMap = [Character: Int]()

        for char in s {
            // If the character is already in the map, remove all characters before it from the current substring
            if let index = charMap[char], let currentStartIndex = current.firstIndex(of: char) {
                current.removeSubrange(current.startIndex...currentStartIndex)
            }
            // Add the current character to the current substring and update the map
            current.append(char)
            charMap[char] = s.distance(from: s.startIndex, to: s.firstIndex(of: char)!)
            // Update the longest substring if the current substring is longer
            if current.count > longest.count {
                longest = current
            }
        }

        return longest
    }
    
    
    func countPairs(_ N: Int) -> Int {
        
       
        
        var count = 0
        let limit = Int(pow(Double(N), 1.0 / 3.0))
        for i in 1...limit {
            let cb = i * i * i
            let diff = N - cb
            
            let cbrtDiff = Int(pow(Double(diff), 1.0 / 3.0))
            
            if cbrtDiff * cbrtDiff * cbrtDiff == diff {
                count += 1
            }
        }
        
        return count
    }
    
    
    
    func findKthLargestElement(_ nums: [Int], _ k: Int) -> Int {
        var arr = nums
        let n = arr.count

        for i in 0..<(k) {
            for j in 0..<(n - i - 1) {
                if arr[j] < arr[j + 1] {
                    arr.swapAt(j, j + 1)
                }
            }
        }
        return arr[k - 1]
    }
    
    
    func sortColors(_ nums: inout [Int]) {
            var start = 0
            var mid = 0
            var end = nums.count - 1
            // process array with suffeling
            while mid <= end {
                var item = nums[mid]
                if item == 0 {
                    nums.swapAt(mid, start)
                    start += 1
                    mid += 1
                } else if item == 1 {
                    mid += 1
                } else if item == 2 {
                    nums.swapAt(mid, end)
                    end -= 1
                }
            }
        }
    
    
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 {
            return 0
        }
        
        var visited = Set<Int>()
        var queue: [(Int, Int)] = [(0, 0)] // (amount, steps)
        
        while !queue.isEmpty {
            print(queue)
            let (currAmount, steps) = queue.removeFirst()
            
            if currAmount == amount {
                return steps
            }
            
            if currAmount > amount || visited.contains(currAmount) {
                continue
            }
            
            visited.insert(currAmount)
            
            for coin in coins {
                queue.append((currAmount + coin, steps + 1))
            }
            print("Printing Quue :: \(queue)\n")
        }
        return -1
    }
    
    
    
    func checkListListNodehasCycle(head : LinkedNode<Int>?) -> Bool {
        var slow = head
        var fast = head?.next
        while slow != nil, fast != nil {
            if slow === fast {
                return true
            }
            
            slow = slow?.next
            fast = fast?.next?.next
        }
        return false
    }
    
    
    func reverseKGroup(_ head: LinkedNode<Int>?, _ k: Int) -> LinkedNode<Int>? {
        var tmp1: LinkedNode<Int>? = head
        
        for _ in 0..<k - 1 {
            tmp1 = tmp1?.next
        }
        if tmp1 == nil {
            return head
        }
        else {
            var current: LinkedNode<Int>?
            var tmp2: LinkedNode<Int>?
            
            for _ in 0..<k {
                if current == nil {
                    current = head?.next
                    head?.next = reverseKGroup(tmp1?.next, k)
                    tmp1 = head
                } else {
                    tmp2 = current?.next
                    current?.next = tmp1
                    tmp1 = current
                    current = tmp2
                }
            }
            return tmp1
        }
    }
    
    
    
    //let index  =   search([4,5,6,7,0,1,2], 0)
    /* func search(_ nums: [Int], _ target: Int) -> Int {
     var left = 0
     var right = nums.count - 1
     let isTargetInLeftPart = nums[0] <= target
     let firstElement = nums[0]
     
     while left <= right {
     let mid = left + (right - left)/2
     let midElement = nums[mid]
     
     if midElement == target {
     return mid
     }
     if isTargetInLeftPart {
     if firstElement > midElement || target < midElement {
     right = mid - 1
     } else {
     left = mid + 1
     }
     } else {
     if firstElement <= midElement || target > midElement {
     left = mid + 1
     } else {
     right = mid - 1
     }
     }
     }
     return -1
     }*/
    
    /*func rotate(_ matrix: inout [[Int]]) {
     let n = matrix.count
     
     //Transpose matrix
     print("Before transpose iteration  :: \(matrix)")
     for i in 0..<n {
     for j in i..<n {
     let temp = matrix[i][j]
     print("ith \(i)row printing temp value :: \(temp)\n")
     matrix[i][j] = matrix[j][i]
     print("printing the column and row \(j) and \(i) :: \(matrix[j][i]) ")
     matrix[j][i] = temp
     }
     }
     print("After transpose iteration  :: \(matrix)")
     
     //Flip matrix horizontally
     for i in 0..<n {
     var l = 0
     var r = n - 1
     while(l < r) {
     let temp = matrix[i][l]
     matrix[i][l] = matrix[i][r]
     matrix[i][r] = temp
     
     l += 1
     r -= 1
     }
     }
     
     } */
    
    
}

class Solution {
    
    /*
     Logic used in this solution: Iterating array from end to start. Checking each character.
     1. If both current and previous chars are space then ignore to check for next logic.
     2. If current char is not space, making a word until next further space found.
     3. Once space is found and word is ready, then append it in final result.
     */
    func reverseWords(_ s: String) -> String {
        
        let charArray = Array(s)
        var result = ""
        var word = ""
        var index = charArray.count - 1
        
        // start loop from end (string length -1) to start (0)
        while index >= 0 {
            
            let currentChar = charArray[index]
            if index > 0 {
                
                // If current char and previous char are space, then ignore the next logic.
                let previousChar = charArray[index - 1]
                if currentChar == " " && previousChar == " " {
                    index -= 1
                    continue
                }
            }
            
            if currentChar != " " {
                // making word until space is not found
                word.insert(currentChar, at: word.startIndex)
                print(word)
            } else {
                
                // if result is not empty, then append a space before adding word into result.
                if result.isEmpty == false {
                    result.append(" ")
                }
                result.append(word)
                word = "" // clean up
            }
            index -= 1
        }
        
        // Adding last word into result if found any. In above logic, last word (in reverse form) will be added into result in case of multiple word in sentense.
        if word.isEmpty == false {
            if result.isEmpty == false {
                result.append(" ")
            }
            result.append(word)
        }
        
        return result
    }
}

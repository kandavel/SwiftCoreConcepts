//
//  Entity.swift
//  DSA
//
//  Created by kandavel on 18/04/23.
//

import Foundation
class LinkedNode<T> {
    var next: LinkedNode<T>?
    var value: T
    
    init(next: LinkedNode<T>?, value: T) {
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

func oddEvenList(_ head: LinkedNode<Int>?) -> LinkedNode<Int>? {
    var odd = head
    var evenHead = odd?.next
    var even = evenHead
    
    while even?.next != nil {
        odd?.next = even?.next
        odd = odd?.next
        even?.next = odd?.next
        even = even?.next
    }
    odd?.next = evenHead
    
    return head
}

//[5, 3, 8, 1, 12, 7, 6]
func insertionSortList(_ head: LinkedNode<Int>?) -> LinkedNode<Int>? {
    let preHead = LinkedNode(next: nil, value: 0)
    var nextUnsorted = head
    while let firstUnsorted = nextUnsorted {
        var previous = preHead
        print(preHead.printList())
        while previous.next != nil && previous.next!.value < firstUnsorted.value {
            previous = previous.next!
        }
        
        nextUnsorted = firstUnsorted.next
        firstUnsorted.next = previous.next
        previous.next = firstUnsorted
        print(previous.printList())
    }
    return preHead.next
}


func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    
    for i in 1..<sortedArray.count {
        let key = sortedArray[i]
        var j = i - 1
        
        while j >= 0 && sortedArray[j] > key {
            sortedArray[j + 1] = sortedArray[j]
            j = j - 1
        }
        
        sortedArray[j + 1] = key
    }
    
    return sortedArray
}

//subArraySum
func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    //    var result = 0
    //    var dict = [Int: Int]()
    //    dict[0] = 1
    //
    //    var sum = 0
    //    for num in nums {
    //        sum += num
    //        if let val = dict[sum - k] {
    //            result += val
    //        }
    //        dict[sum, default: 0] += 1
    //        print(dict)
    //    }
    //
    //    return result
    
    var cumulativeSum = 0
    var sumCount = [Int: Int]()
    sumCount[cumulativeSum] = 1
    
    var countToReturn = 0
    print(nums)
    //[1, 3, 4, 2, 5, 3]
    for num in nums {
        cumulativeSum += num
        
        // order matters below
        // i.e., if (2) came before (1), this would fail for k = 0
        
        // (1)
        let result = cumulativeSum - k
        if let count = sumCount[result] {
            countToReturn += count
        }
        // (2)
        if let count = sumCount[cumulativeSum] {
            sumCount[cumulativeSum] = count + 1
        } else {
            sumCount[cumulativeSum] = 1
        }
        print(sumCount)
    }
    
    return countToReturn
}


class SubstringSolution {
    func countSubstrings(_ s: String) -> Int {
        var result = 0
        var s = Array(s)
        
        for i in 0..<s.count {
            result += countPalindromes(s, i, i)
            result += countPalindromes(s, i, i + 1)
        }
        print(result)
        return result
    }
    
    func countPalindromes(_ s: [Character], _ left: Int, _ right: Int) -> Int {
        var left = left
        var right = right
        var result = 0
        
        while left >= 0 && right < s.count && s[left] == s[right] {
            result += 1
            left -= 1
            right += 1
        }
        return result
    }
}

class UniquePathSolution {
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]] = [[0,1],[0,0]]) -> Int {
        let m = obstacleGrid.count
        let n = obstacleGrid[0].count
        var f = Array(repeating: 0, count: n)
        print(f)
        f[0] = 1
        var g: [Int]
        for i in 0..<m {
            g = f
            print("f printing :: \(f)")
            print("g printing  :: \(g)")
            f[0] = obstacleGrid[i][0] == 0 ? g[0] : 0
            for j in 1..<n {
                f[j] = obstacleGrid[i][j] == 0 ? f[j-1] + g[j] : 0
                print("f printing inside :: \(f)")
            }
        }
        print(f)
        return f[n-1]
    }
}

class GroupAnagramsSolution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
            var dict = [[Int]: [String]]()
            for str in strs {
                var counts = Array(repeating: 0, count: 26)
                for char in str {
                    let index = Int(char.asciiValue! - 97)
                    counts[index] += 1
                }
                dict[counts, default: []].append(str)
            }

            return Array(dict.values)
        }
}

class MinPathSumSolution {
    // - Complexity:
    //   - time: O(n * m), where n is the number of rows in the grid, and m is the number of columns in the grid.
    //   - space: O(m), where m is the number of columns in the grid.

    func minPathSum(_ grid: [[Int]] = [[1,3,1],[1,5,1],[4,2,1]]) -> Int {
        var matrix: [[Int]] = grid
        let n = grid.count - 1
        let m = grid[0].count - 1
        
        for i in 0...n {
            for j in 0...m {
                var step = matrix[i][j]
        
                if i > 0 && j > 0 {
                    step += min(matrix[i - 1][j], matrix[i][j - 1])
                } else if i > 0 && j == 0 {
                    step += matrix[i - 1][j]
                } else if j > 0 && i == 0 {
                    step += matrix[i][j - 1]
                }
                
                matrix[i][j] = step
            }
        }
        
        return matrix[n][m]
    }

}

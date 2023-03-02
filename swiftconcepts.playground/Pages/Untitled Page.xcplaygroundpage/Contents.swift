//: [Previous](@previous)

import Foundation

//printing prime  numbers

////// FIXME: -
//3,7,5,1,2
func printPrimeNumber(number :  Int) -> Bool {
    
   let reminder  = number / 2
    let mod  =  number  % 2
    if mod == 0 {
        
    }
    else {
        
    }
    return true
}

//Printing CommonCharacters
let array  =  ["suman","sunil","sujith"]
func printCommonCharacters(list  : [String]) -> String {
    var commonPrefix  = ""
    var smallestString  =  ""
    smallestString =  array.min { (element1,element2) in
        return element1.count < element2.count
    } ?? ""
    
    print(smallestString)
    for eachChar  in smallestString {
        for eachString  in  list {
            for eachStringChar in eachString {
                if eachChar == eachStringChar {
                    let stringChar  =  String(eachChar)
                    commonPrefix.append(stringChar)
                }
            }
        }
    }
    return commonPrefix
}
printCommonCharacters(list: array)



//nitin.

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//First Duplicate
func firstDuplicate(array : [Int]) {
    var duplicateDictionary  : [Int : Int] = [:]
    for eachElement in array  {
        if let value  = duplicateDictionary[eachElement] {
            duplicateDictionary[eachElement]  = value + 1
        }
        else {
            duplicateDictionary[eachElement] =  1
        }
    }
    
    let firstOccurance  =  duplicateDictionary.filter { (key,value) in
        return value > 1
    }.first?.key
    
    print(firstOccurance)
    
}

firstDuplicate(array: [1,2,1,2,3,4,4])


func  firstDuplicateApproach(array :  [Int]) {
    
    var isMatchFound  = false
    for i in 0..<array.count {
       var j = i + 1
        for j  in j..<array.count {
            print("printing j value  :: \(j)")
            if array[i] == array[j]  {
                isMatchFound = true
                print("First Duplicate  :: \(array[i])")
                break
            }
        }
        if isMatchFound {
            break
        }
    }
}
firstDuplicateApproach(array: [1,2,1,2,3,4,4])


///obj.printValue(bool = true) // prints 1
//obj.printValue(intValue = 1) // prints 1
//obj.printValue(stringValue = "abc") //print abc


class Parent {
    
    func printValue(bool : Bool) {
        print("Bool :: \(bool)")
    }
    
    func printValue(intValue : Int) {
        print("intValue :: \(intValue)")
    }
    
    func printValue(_ stringValue : String) {
        print("stringValue :: \(stringValue)")
    }
    
}

let p  =  Parent()
p.printValue(bool: true)
p.printValue(intValue: 1)
p.printValue("abc")


extension Collection {
    
    func myMap<T>(_ tranform : (Element) -> T ) -> [T] {
        var result :  [T] = []
        for eachelemnt in self {
            //* 2
           let transformedELment =  tranform(eachelemnt)
            result.append(transformedELment)
        }
        return result
    }
    
    func myCompactMap<T>(_ tranform : (Element) -> T? ) -> [T] {
        var result :  [T] = []
        for eachelemnt in self {
            //* 2
            if  let transformedELment =  tranform(eachelemnt) {
                result.append(transformedELment)
            }
        }
        return result
    }
    
    func myFilterMap(_ tranform : (Element) -> Bool ) -> [Element] {
        var result :  [Element] = []
        for eachelemnt in self {
            //* 2
            if  tranform(eachelemnt) {
                result.append(eachelemnt)
            }
        }
        print(result)
        return result
    }
    
    func myReduce<T>(intialValue : T , transform : (T,Element) -> T) -> T {
        var result  = intialValue
        for eachElement in self {
            result = transform(result, eachElement)
        }
        return result
    }
    
//    func transform<T>(intialResult : T, actualElement : Element) -> T {
//        return intialResult + actualElement
//    }
}



["1","2","4","5", "five"].myCompactMap { (eachElemnt) in
    return (Int(eachElemnt))
}

[2,4,3,6,7].myFilterMap { (eachElemnt) in
    return eachElemnt % 2 == 0
}

["kandavel\n","lova\n","ankit\n","kiran\n","Nithin\n"].myReduce(intialValue: "Hey  ios Dev \n") { result,element  in
    return result + element
}

let value  = [2,4,3,6,7].myMap({Double($0 * 2)}).myReduce(intialValue: 2.0) { result, eachElemnt in
    return result + eachElemnt
}
print(value)


let myMapDixt  = [1 : "2",2 :  "5",11 : "22",22 :  "52"].myMap { (key,value) in
    return (Int(value) ?? 0) * 2
}

print(myMapDixt)

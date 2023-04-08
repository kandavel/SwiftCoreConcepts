//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
print("Statement 1")
DispatchQueue.main.async {
    print("Statement 2")
    DispatchQueue.main.async {
        print("Statement 3")
    }
    print("Statement 4")
    DispatchQueue.main.sync {
        print("Statement 5")
    }
    print("Statement 6")
}
print("Statement 7")*/


//Booster
// 1 -> 2 -> 3 -> 4 -> 5 -> qn
// Qs
// ListOfOtions
//Next

//MVVM + c //Routing

//VC
//VM
//Servicelayer
//NetworkManger // Alamofirelibray


//VC  -> ViewControllerP
/*
protocol ViewControllerP : class {

  //func viewDidload
  //func showloading
 // func hideLoading
 // func showUIState
  //reloaddata


}





class ViewController : ViewControllerP , BaseViewController {

    weak var delegate : ViewModelProt?
    
    //TableViewMethods
    
    self.delegate.getNumberOFSection()
    
}
extension ViewController  {
    func viewDidload() {}
    func showloading() {}
    func hideLoading() {}
    func showUIState() {}
    func reloaddata()
}

//ViewModelP

 protcol ViewModelProt : AnyObject {
     func getNumberOFSection
      func geyNumoFRows()
      
 }


 

class ViewModel : ViewModelProt {
    weak var view : ViewControllerP?
    var servicelayer = serviceLayer()
    
    func getNumberOFSection() {
        return array.count
    }
    func geyNumoFRows() {
        
        
    }
    
    func fetchData() {
        
    }
    
    func fetchData(result : Result<T,error>) {
        
        view.showUIState()
    }
}


class serviceLayer {
    
    var netwrkLayer : NetworkProtocol?
    var
    
    func fetchData() {
        netwrkLayer?.fetchData(request: <#T##URLRequest#>, competionHanler: <#T##Result<T, Error>#>)
        
        
    }
    
}

protocol NetworkProtocol {
    func fetchData<T>(request : URLRequest, competionHanler : Result<T,Error>)
}

class NetworkManager : NetworkProtocol {
    func fetchData<T>(request: URLRequest, competionHanler: Result<T, Error>) {
        //Alamfofire.shar.request(req) {
        completion
    }
    }
    
    
    
}


class ViewController : ViewControllerP {
    
    
    
}

let view  : ViewControllerP  = ViewController()
let viewModel : ViewModelProt  = ViewModel()
view.delegate = viewModel
viewModel.view = view
viewModel.view  //
((viewModel.view) as? ViewController)
*/


///// FIXME: -
///// FIXME: -

protocol ClassProtocol {
    //func method1()
}
extension ClassProtocol {
    func method1() {//
        print("Class protocol")
    }
}

class  ClassA : ClassProtocol {
    func method1() {
        print("Class")
    }
    
    
    
}
let classA : ClassProtocol  = ClassA()
classA.method1()


//func fun1(num : Int) -> Int {
//    func fun2(num : Int) -> Int {
//        func fun3(num : Int) -> Int {
//            return num * 3
//        }
//        return num * fun3(4)
//    }
//    return num * fun2(5)
//}
//print(fun1(2))

let num  = [1,2,4].map {[$0,$0]}
print(num)

struct Some {
var x = 0

}
var a  =  Some(x: 2)
var a1  =  a

a.x = 2
a1.x = 3
  
a.x * a1.x





class a99 {
    func printq() {
        
    }
}
class b  : a99 {
    override init() {
        
    }
}

class vehicke {
    var wheel = 0
    
    required init(wheel : Int) {
        self.wheel = wheel
    }
    
}
class car1 : vehicke {
    
}
var achar = car1(wheel: 0)

enum someenum : Int,CaseIterable {
    case enum1 = 5
    case enum2
case enum3 =  0
    case enum4
}
print(someenum.allCases.forEach({ value in
    print(value.rawValue)
}))


class SimpleTime {
    var seconds : Int =  0
    var timer  : Int = 0
}

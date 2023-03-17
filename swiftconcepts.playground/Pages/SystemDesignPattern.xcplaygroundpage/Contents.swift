//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//CreationalDesignPattern
//BSF@AP
//BehaviouralDesignPattern
//ObTranssformChainOfresponsibily
//Structutal
//MADF

/*https://medium.com/@lubabahasnain93/design-patterns-in-swift-part-i-creational-design-pattern-18d4be82092f*/
/* https://medium.com/@lubabahasnain93/design-patterns-in-swift-part-ii-behavioral-design-pattern-5e4e5f13ccf7*/

//Prottotype Design Pattern
// Protocol
protocol Fruit {
    func set(price: String?)
    func clone() -> Fruit
}

// Class Apple which implements the protocol
class Apple: Fruit {
    var count: Int
    var price: String?
    
    init(count: Int) {
        self.count = count
    }

    func set(price: String?) {
        self.price = price
    }
    
    // function definition for cloning the object
    func clone() -> Fruit {
        return Apple(count: self.count)
    }
}

// Create a prototype
let prototype = Apple(count: 4)
// Create a copy of existing object
let redApple: Apple = prototype.clone() as! Apple
redApple.count // 4
// add own properties
redApple.set(price: "$2")
redApple.price // $2
// Create a copy of existing object
let greenApple: Apple = prototype.clone() as! Apple
greenApple.count // 4
// add own properties
greenApple.set(price: "$4")
greenApple.price // $4

/*• When you clone an object, all the properties of that object is copied to
 another object.
 • This design pattern should be used when you need to create an object without knowing the hierarchy of that class*/


//Builder Design Pattern
/*creating complex objects from basic objects*/
// protocol  for creating a product
protocol ShoeShop {
    func produceShoe()
    func producecrocs()
    
}
extension ShoeShop {
    init() {
        self.init()
    }
    func producecrocs() {
        print("crocs Produced")
    }
}

// class that conforms to ShoeShop protocol
class Nike: ShoeShop {
    func produceShoe() {
        print("Shoe Produced")
    }
    func producecrocs() {
        print("crocs v2.0 Produced")
    }
}

// class that is initialsed with the object that conforms to ShoeShop protocol
class Director {
    let shoeShop: ShoeShop
    // instantiation
    init(shoeShop: ShoeShop) {
        
        self.shoeShop = shoeShop
    }
    func produce() {
        shoeShop.produceShoe()
        shoeShop.producecrocs()
    }
}
let shoeShop = Nike()
let builderObject  =  Director(shoeShop: shoeShop)
builderObject.produce()
/*Use Builder pattern when building public APIs because it does not reveal the implementation details
 • Hides complexity. It provides a simple API behind a complex task.*/


//Factory DesignPattern
/*This design pattern provides an interface for creating families of related objects without specifying their concrete classes. They are often implemented with Factory Method pattern.*/

protocol Furniturefactory {
   static func createtable() -> furnitureCount
   static func createsofa() -> furnitureCount
}

protocol furnitureCount {
    func printCOunt()
}

private class Sofa : furnitureCount {
    func printCOunt() {
        print("Sofa is printed")
    }
}

class Table : furnitureCount {
    func printCOunt() {
        print("Table is printed")
    }
}

class Factory  : Furniturefactory {
    static func createtable() -> furnitureCount {
       return Table()
    }
    static func createsofa() -> furnitureCount {
        return Sofa()
    }
}

// create MyChair class object
let chair = Factory.createtable()
chair.printCOunt() // 4
// create MyTable class object
let table = Factory.createsofa()
table.printCOunt() // 1

/* Reveals the interface, not their implementation
 • Abstract Factory is like a protocol that we will use on a concrete class to create objects*/






///Behavioralpatter
///Observar pattern, Template Pattern, Mediaotr Pattern,Template pattern


//Template pattern
/* In Template method pattern, classes interact using only base classes that implements the algorithm steps*/
protocol Office {
    func officeSchedule()
}

protocol Employee {
    func work()
    func getPaid()
}

class XYZOffice: Office {
    var delegate: Employee
    
    init(employee: Employee) {
        self.delegate = employee
    }
    
    func officeSchedule() {
        delegate.work()
        delegate.getPaid()
        (delegate as? Developer)?.hardworker()
    }
}

class Developer: Employee {

    func work() {
        print("Developer has worked 40 hours/week this month")
    }

    func getPaid() {
        print("Developer has earned Rs 50,000 this month")
    }
    
    func hardworker() {
        print("Developer is a hardWorker")
    }
}

class ProductManager: Employee {
    
    func work() {
        print("Product Manager has worked 55 hours/week this month")
    }
    
    func getPaid(){
        print("Product Manager has earned Rs 80,000 this month")
    }
    
}

let omuniOffice  = XYZOffice(employee : Developer())
omuniOffice.officeSchedule()

//ChainOfResponsibilityPattern
enum Level: Int {
    case state = 1
    case national = 2
    case international = 3
}

class Sports {
    var level: Level
    
    init(level: Level) {
        self.level = level
    }
}

protocol GameManagement {
    var nextLevelManagement: GameManagement? { get set }
    func manage(sports: Sports)
}

class StateSportsTeam: GameManagement {
    var nextLevelManagement: GameManagement?
    
    func manage(sports: Sports) {
        if sports.level.rawValue == 1 {
            print("Managed by State Sports Management")
        } else {
            nextLevelManagement?.manage(sports: sports)
        }
    }
}

class NationalSportsTeam: GameManagement {
    var nextLevelManagement: GameManagement?
    
    func manage(sports: Sports) {
        if sports.level.rawValue == 2 {
            print("Managed by National Sports Management")
        } else {
             nextLevelManagement?.manage(sports: sports)
        }
    }
}

class InternationalSportsTeam: GameManagement {
    var nextLevelManagement: GameManagement?
    
    func manage(sports: Sports) {
        if sports.level.rawValue == 3 {
            print("Managed by International Sports Management")
        } else {
             nextLevelManagement?.manage(sports: sports)
        }
    }
}
let stateSportsTeam =  StateSportsTeam()
let nationalSportsTeam =  NationalSportsTeam()
let internationalSportsTeam =  InternationalSportsTeam()
stateSportsTeam.nextLevelManagement = nationalSportsTeam
stateSportsTeam.manage(sports: Sports(level : Level.national))

/* Chain of Responsibility is a behavioral design pattern that let us pass the requests among a chain of handlers where each handler decides either to process the request or to pass it along the chain.*/


//Mediator Design Pattern

protocol Receiver {
    var name: String  { get }
    func receive(message: String)
}


protocol Sender {
    var teams: [Receiver] { get }
    func send(message: String, sender: Receiver)
}

class Mediator: Sender {
    var teams: [Receiver] = []
    
    func register(candidate: Receiver) {
        teams.append(candidate)
    }
    
    func send(message: String, sender: Receiver) {
        for team in teams {
           // if team.name != sender.name {
                 team.receive(message: message)
           // }
        }
    }
}

struct TeamA: Receiver {
    var name: String {
        return "The Avengers"
    }
    
   
    func receive(message: String) {
        print("\(name) received: \(message)")
    }
}

struct TeamB: Receiver {
    var name: String {
        return  "The League of Extraordinary Gentlemen"
    }
    
    
    
    func receive(message: String) {
        print("\(name) received: \(message)")
    }
}

let teamA = TeamA()
let teamB = TeamB()

let mediator = Mediator()
mediator.register(candidate: teamA)
mediator.register(candidate: teamB)

mediator.send(message: "Selected for final! from \(teamA.name)", sender: teamA)
//mediator.send(message: "Not selected for final! from \(teamB.name)", sender: teamB)

/* Let us take a scenario when two or more classes has to interact with each other. Instead of directly communicating with each other and getting the knowledge of their implementation, they can talk via a Mediator*/

//Observer Desig Pattern

protocol Observable {
    func add(customer: Observer)
    func remove(customer : Observer)
    func notify()
}

protocol Observer {
    var id: Int { get set }
    func update()
}

class AppleSeller: Observable {
    private var observers: [Observer] = []
    private var count: Int = 0
    
    var appleCount: Int {
        set {
            count = newValue
            notify()
        }
        get {
            return count
        }
    }
    
    func add(customer: Observer) {
        observers.append(customer)
    }
    
    func remove(customer : Observer) {
        observers = observers.filter{ $0.id != customer.id }
    }
    
    func notify() {
        for observer in observers {
            observer.update()
        }
    }
}

class Customer: Observer {
    var id: Int
    var observable: AppleSeller
    var name: String
    
    init(name: String, observable: AppleSeller, customerId: Int) {
        self.name = name
        self.observable = observable
        self.id = customerId
        self.observable.add(customer: self)
    }

    func update() {
         print("Hurry \(name)! \(observable.appleCount) apples arrived at shop.")
    }
}
let appleSeller = AppleSeller()
let james = Customer(name: "James", observable: appleSeller, customerId: 101)
let david = Customer(name: "David", observable: appleSeller, customerId: 102)
appleSeller.appleCount = 10
appleSeller.appleCount = 10 + 20
appleSeller.remove(customer: james)
appleSeller.appleCount = 10
//appleSeller.remove(customer: james)
//appleSeller.appleCount = 20


/* when the state of one object changes, other object which are subscribed to it gets notified about the state change*/


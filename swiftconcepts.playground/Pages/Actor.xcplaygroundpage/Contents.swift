//: [Previous](@previous)

import Foundation
import _Concurrency

var greeting = "Hello, playground"

actor BankAccount1 {
    var totalMoney: Double = 0.00
    
    // deposit money and return total
    func deposit(money: Double) -> Double {
        self.totalMoney += money
        return self.totalMoney
    }
}

var myBankAccount1 = BankAccount1()

Task.detached {
    print(await myBankAccount1.deposit(money: 10.00))
}

Task.detached {
    print(await myBankAccount1.deposit(money: 15.00))
}

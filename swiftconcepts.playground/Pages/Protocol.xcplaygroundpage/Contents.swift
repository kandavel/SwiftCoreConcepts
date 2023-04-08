//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/*
//: [Next](@next)
protocol PaymentDelgate : AnyObject {
    func initsdk()
    func makePayment()
    func getPaymentStatusDone()
}


class UpiManager  : PaymentDelgate {
    
    func initsdk() {
        
    }
    
    func makePayment() {
        
    }
    func getPaymentStatusDone() {
        
    }
}

class Netbanking : PaymentDelgate {
    
}

class CreditCard : PaymentDelegate {
    
}


protocol a {
    func 
}
*/
let calendar = Calendar.current
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "HH:mm"

var timeIntervals: [String] = []

let startDate = calendar.date(bySettingHour: 0, minute: 0, second: 0, of: Date())!
let endDate = calendar.date(bySettingHour: 23, minute: 59, second: 59, of: Date())!

var currentDate = startDate

while currentDate <= endDate {
    let intervalString = dateFormatter.string(from: currentDate)
    timeIntervals.append(intervalString)
    currentDate = calendar.date(byAdding: .minute, value: 30, to: currentDate)!
}
print(timeIntervals)








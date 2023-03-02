//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//How TableView Works

//1] TableView relies on the DequereusbaleCell
//2]Cell are created Based on the Device content
//3] only those  cell reused
//4] cell which are crossed above the visble area are put into the  pool of queue, so that that the same cell  can be reused for the different data
//5]to reuse the cell attrbutes  -> prepare for reuse is used
//6] performance can be increased and memory trace get reduced


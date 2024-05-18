import UIKit

var greeting = "Hello, playground"

let integer: Int? = Int("6")
let constFive = 5

if integer == nil{
    print("integer is empty")
} else {
    print("intger is not empty")
}

if let unwrappedValue = integer { // 1
    constFive + unwrappedValue
}

if let firstNumber = Int("4"),
    let secondNumber = Int("101"),
    firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100 ")
}

let newVar = Int("4") ?? 0 // 2

var implicityUnwrappedValue: Int! = Int("6")
print(implicityUnwrappedValue)
   

//-------------------
var stringOptional: String? = "Hello"
stringOptional = Optional<String>.some("Hello")
stringOptional = Optional<String>.none // same like nil

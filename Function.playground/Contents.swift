import UIKit

var numbers = "1, 2, 3, 4"
var floatNubmers = "1.1, 2.2, 3.3, 4.4"

func showNumbers(){
    print(numbers)
    print(floatNubmers)
    print("------------------------")
}

func addNumber(value: Int, floatValue: Float)  { // let value: Int, let floatValue: Float
    numbers += ", \(value)"
    floatNubmers += ", \(floatValue)"
    
    showNumbers()
}
showNumbers()
addNumber(value: 5, floatValue: 5.5)
addNumber(value: 6, floatValue: 6.6)
// ----------------------------------
func sumValue(value1: Float, value2: Float) -> Float {
    let sum = value1 + value2
    return sum
}

var result = sumValue(value1: 3.33, value2: 4.22)
print(result)

addNumber(value: 9,
        floatValue: sumValue(value1: 3.33, value2: 4.22))
//____________________________________________________

func someFunc1(firstExternalName firstInternalName: Int, secondExternalName secondInternalName: Int){
    print(firstInternalName)
    print(secondInternalName)
}
someFunc1(firstExternalName: 777, secondExternalName: 999)

func someFunc2(_ firstInternalName: Int, _ secondInternalName: Int){
    print(firstInternalName)
    print(secondInternalName)
}
someFunc2(444, 888)
//--------------------------------------------------

func createPerson(with name: String, and surname: String) -> String{
     name + surname // with or without return
    // after return code not read!
    // Only ONE return in the function
}

createPerson(with: "Tolik ", and: "Trosin")

var personName = "Slava "
var surname = "Swith"
createPerson(with: personName, and: surname)

//---------------------------------------

func withDefault (first: Int = 5, second: String = "String", third: Int? = nil){
    print(first,second,third)
}
withDefault() // default both parameters or
withDefault(first: 22, second: "Hello", third: 909)

//---------------------------------------

func array(of numbers: Int...) {
    print(numbers)
}
array(of: 1,2,3,4,5)
//____________________________________ inout

func funcWithInout(first: inout String){
    first += " My string from func."
}
var testString = "Hello testString."
funcWithInout(first: &testString)
print(testString)
//__________________________________

func addToInt(a: Int, b: Int) -> Int{
    return a + b
}
func minusToInt(a: Int, b: Int) -> Int{
    return a - b
}
addToInt(a: 5, b: 5)

var myFunc: (Int, Int) -> Int = addToInt
myFunc(3,3)
myFunc = minusToInt
myFunc(9,2)

func call(mathFunc: (Int, Int)-> Int, a: Int, b: Int) {
    print("Result - \(mathFunc(a,b))")
}
call(mathFunc: addToInt, a: 7, b: 9)
call(mathFunc: minusToInt, a: 8, b: 4)
//______

func returnFunc(bool: Bool) -> (Int,Int) -> Int{
    if bool {
        return addToInt
    }else{
        return minusToInt
    }
}
var myFuncRet = returnFunc(bool: true)
myFuncRet(3,2)
returnFunc(bool: false) (5,4)
//______

func doSomething(){
}
var funDoSomething: () -> Void = doSomething   // () or Void
//---- nested func

func someFunc (){
    func nestedFunc(){
        print("nestedFunc")
    }
    func secondNestedFunc(){
        print("secondNestedFunc")
    }
    
    nestedFunc()
    secondNestedFunc()
}
someFunc()

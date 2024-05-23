//import UIKit
//
//var greeting = "Hello, playground"
//
//func add (a:Int, b:Int) -> Int {
//    return a + b
//}
//var addVar: (Int, Int) -> Int = { a, b in
//    return a + b
//}
//var addVarClosure: (Int, Int)->Int = {$0 + $1}
//
//add(a: 3, b: 5)
//addVar(2,5)
//addVarClosure(2,5)
//func myFunc(a: Int, b:Int, mathFunc: (Int,Int)->Int){
//    let result = mathFunc(a,b)
//    print(result)
//}
//myFunc(a: 6, b: 9, mathFunc: add(a:b:))
//myFunc(a: 3, b: 3, mathFunc: addVarClosure)
//
//myFunc(a: 5, b: 7, mathFunc: {$0-$1} )
//myFunc(a: 14, b: 7) {$0 - $1}
//
//func autorclosuerFunc(isOk: Bool, closure: () -> Void){
//    if isOk{
//        closure()
//    }else{
//        print("Sorry")
//    }
//}
//autorclosuerFunc(isOk: false, closure:{print("My closure")})
//autorclosuerFunc(isOk: false){print("My closure")}
//
//func autorclosuerFunc1(isOk: Bool, closure: @autoclosure () -> Int){
//    if isOk{
//        closure()
//    }else{
//        print("Sorry")
//    }
//}
//
//autorclosuerFunc1(isOk: false, closure: 2)
////_____
//var integer = 5
//var someClosure = {[integer ] in
//    print(integer)
//}
//
//someClosure()
//integer += 1
//someClosure()
//print(integer)

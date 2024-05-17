import UIKit

//var greeting = "Hello, playground"
//
//// > < == != <= >=
//// || && !
//// Bool
//
//let myVar = true
//if myVar {
//    print("inside if")
//}
//
//let temperature = -20
//
//if temperature <= 0{
//    print("Freazzzzing")
//} else if temperature < 15{
//    print("Cold outside")
//} else {
//    print("Warm outside")
//}
//
//// ? :
//var isInfoPresent = true
//var navBarHeight = 44 + (isInfoPresent ? 20 : 0)
//
////swithc
//var interger = 2
//switch interger{
//case 0:
//    print("variable is ZERO")
//case 1:
//    print("variable is ONE")
//case 2:
//    print("variable is TWO")
//default:
//    print("variable biger when 2")
//}
//
//let point = (1,0)
//
//switch point{
//case (_,0):
//    print("This is X")
//case (0,_):
//    print("This is Y")
//default:
//    print("Betwin X and Y")
//}
//
//let point2 = (0,55)
//switch point2{
//case (let x,0):
//    print("This is X - \(x)")
//case (0,let y):
//    print("This is Y - \(y)")
//case (let x, let y):
//    print("Betwin X - \(x) and Y - \(y) ")
//}
//
//switch point2 {
//case (let x, 0), (0, let x):
//    print("rastoynie \(x)")
//case (let x, let y):
//    print(" x - \(x), y - \(y)")
//}

//var sum = 0
//for index in 1...5 {
//    sum += index
//    print(" sum = \(sum), Index = \(index)")
//}
//print("result = \(sum)")
// 
//var index = 1
//var whileSum = 0
//while 1...5 ~= index {
//    whileSum += index
//    index += 1
//    print("While value = \(1...5 ~= index)")
//}
//print("Index = \(index)")
//print("WhileSum = \(whileSum)")
//
//index = 1
//var repeatWhileSum = 0
//repeat {
//    repeatWhileSum += index
//    index += 1
//    print("\(repeatWhileSum) Repeat while value = \(1...5 ~= index)")
//} while 1...5 ~= index
//print("Index = \(index)")
//print("WhileSum = \(repeatWhileSum)")
//
//let number = 5
//let power = 8
//var result: Int = 1
//
//for i in 1...power {
//    result *= number
//}
//print(result)
//
//var resultW = 1
//var indexW = 1
//while 1...power ~= indexW{
//    resultW *= number
//    indexW += 1 //  if while > power, works for stop while
//}
//print(resultW)
//
//var num = 5
//
//var result = 1
//
//for index in 1...num {
//    
//   result = result * index
//    print(result)
//}
//print("Factorial \(num) = ", result)
//
//var resultW = 1
//var index = 1
//
//while 1...num ~= index {
//    resultW = resultW * index
//    index += 1
//}
//print(resultW)
//
//var resultR = 1
//var indexR = 1
//repeat {
//    resultR = resultR * indexR
//    indexR += 1
//} while 1...num ~= indexR
//print(resultR)




//continue
//break
//fallthrough
//return
//throw

var  numbers: [Int] = [1,2,3,4,5,6,7,8,9,10]
var count = 0
//for i in numbers{
//    if i % 2 == 0{
//        print ("This number \(i) is good!")
//        count += 1
//    }else{
//        print("\(i)")
//    }
//}
//print("Totall good numbers are \(count)")

for number in numbers {
    if number % 2 == 0{
        print("this number \(number) is good ")
        continue
    }
    print(number)
}
//var  numbers2: [Int] = [1,1,3,3,5,5,7,8,9,10]
//var index = 0
////for number in numbers2 {
////    if number % 2 == 0 {
////        print("this number \(number) is good ")
////        break
////    }
////    print(number)
////}
//label: while index < 3{
//    
//label1: while index < 3{
//        for number in numbers2 {
//            if number % 2 == 0{
//                print("this number \(number) is good!")
//                count+=1
//                break label
//            }
//            print(number)
//        }
//        index += 1
//    }
//    index += 1
//}
//print(count)
//
//var numberToDiscribe = 5
//var number = numberToDiscribe
//var result = "This number \(numberToDiscribe) is "
//
//switch numberToDiscribe {
//case 2,3,5,7,11,13,17:
//    result += "prime nuber and also "
//    fallthrough
//default:
//    result += "an integer."
//}
//print(result)

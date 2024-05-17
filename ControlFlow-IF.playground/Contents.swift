import UIKit

var greeting = "Hello, playground"

// > < == != <= >=
// || && !
// Bool

let myVar = true
if myVar {
    print("inside if")
}

let temperature = -20

if temperature <= 0{
    print("Freazzzzing")
} else if temperature < 15{
    print("Cold outside")
} else {
    print("Warm outside")
}

// ? :
var isInfoPresent = true
var navBarHeight = 44 + (isInfoPresent ? 20 : 0)

//swithc
var interger = 2
switch interger{
case 0:
    print("variable is ZERO")
case 1:
    print("variable is ONE")
case 2:
    print("variable is TWO")
default:
    print("variable biger when 2")
}

let point = (1,0)

switch point{
case (_,0):
    print("This is X")
case (0,_):
    print("This is Y")
default:
    print("Betwin X and Y")
}

let point2 = (0,55)
switch point2{
case (let x,0):
    print("This is X - \(x)")
case (0,let y):
    print("This is Y - \(y)")
case (let x, let y):
    print("Betwin X - \(x) and Y - \(y) ")
}

switch point2 {
case (let x, 0), (0, let x):
    print("rastoynie \(x)")
case (let x, let y):
    print(" x - \(x), y - \(y)")
}

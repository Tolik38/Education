import UIKit

var greeting = "Hello, playground"
greeting = "New value"

var greeting1 = greeting

var a = 3
var b = 8
var c: Int
print(a)
print(b)

//c = a
//a = b
//b = c

let (x,y) = (1,2)
(a,b) = (b,a)

print(a)
print(b)

a % 2
b % 2
let two = 2
let minusTwo = -two

var sum = 4
sum = sum + 4
sum *= 4

b == a
b != a

"Tolik" == "tolik"
print ("Cafe\u{301}")
print ("Caf\u{E9}")

// true, false, !, &&, ||

let isEmpty = true
let isFull = !isEmpty

// logical *
true && true
true && false
false && true
false && false

// logical +
true || true
true || false
false || true
false || false

//true --- true --- true
(2<3) && (2<3 || 1<2)
//false -> stop
(2<1) && (2<3 || 1<2)

var questIsFinished = true
var hasKey = false
var hasMoney = true

let isDoorOpen = hasMoney && (hasKey || questIsFinished)

var range = 1..<8

range.contains(a)
range.contains(b)
range ~= a // true or false
range ~= b
// different type of data, can't =
var range1 = b...a
var range2 = b...
var range3 = ...(a - 1)




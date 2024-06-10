import UIKit


// 1. Any & AnyObject (array + variable)

var myVar: Any = 4 // Any like value type
myVar = 4.0
myVar = true
print(myVar)

class Animal{
    var name: String?
}

class Dog: Animal {
    func bark(){
        print("Whoof!")
    }
}

var myVarAninmal: Any = Animal()
myVarAninmal = 123
print(myVarAninmal)

// Array

var things: [Any] = []

things.append(0)
things.append(0.0)
things.append("Hello")
things.append((2.0, 5.3))
things.append(Animal()) // class is reference type
things.append({(name: String) -> String in "Hello, \(name)"}) // closure is reference type

// AnyObject - refernce type only

var myAnyObject: AnyObject = Animal()

var closure: (String) -> String = {"Hello, \($0)"}
myAnyObject = closure as AnyObject
myAnyObject = Dog()

// 2. is

var result = myVar is String  // Bool, check string or not
if myVar is String {   // true or false
    print("This is STRING!")
}

if myAnyObject is Dog { // checking if it the dog class
    print("This is a dog!")
}

// 3. as (bridge + upcasting)


var myDog: Dog = Dog()
myDog.bark()
var myAnimal = myDog as Animal // upcasting
myAnimal.name = "Ducty"




for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let animal as Animal:
        print("a animal called \(animal.name)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}

// 4. as?!    downcasting

var myOptionalDog = myAnimal as? Dog
if let dog = myOptionalDog{
    dog.bark()
}

if let myOptionalDog = myOptionalDog { //same
    myOptionalDog.bark()
}
 
for thing in things {
    if let animal = thing as? Animal{
        print(" Animal name - \(animal.name) ")
    }
}

// 5. Performance as vs as? !
 // as? ! - runtime
 // as - compile


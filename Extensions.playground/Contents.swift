import UIKit

var greeting = "Hello, playground"


class Person {
    func sayHi () {
        print("Hi")
    }
}

extension Person {
    func sayHello(){
        print("Hello")
    }
}

extension Person{
    
    static var avgLifeDuration = 75   // static
    
    func sayBlaBla(){
        print("BlaBlaBla")
    }
}

class SmarPerson: Person{
    func saySmart(){
        print("I'm really smart!")
    }
    
    override func sayHi() {         // override is not working from extentions *** or you can add "@objc dynamic" for override target
        print("Hi, I'm smart man!")
    }
    
}

//var human = Person()
//human.sayHi()
//human.sayBlaBla()
//var smartHuman = SmarPerson()
//smartHuman.saySmart()
//smartHuman.sayHi()
//
//Person.avgLifeDuration = 88
//SmarPerson.avgLifeDuration = 99
//Person.avgLifeDuration

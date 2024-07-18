//import UIKit
//
//class Person {
//    var name: String = "Tolik"
//    var creditCard: CreditCard?
//    
//    deinit{
//        print("Person deinit!")
//    }
//}
//
//class CreditCard{
//    var number: Int?
//    weak var cardHolder: Person?
//    
//    deinit {
//        print("Credit card deinit!")
//    }
//}
//
//var person: Person? = Person()  // strong
//var person1 = person     // strong
//
//
//// we have two links for person
//person = nil
//person1 = nil
//
//// 1
//
//do{
//    var person2 = person
//    person2 = nil
//    
//}
//// 2
//
//// when do is end everything is delete in this scope
//do { // two links to var
//    var personCreditCard :Person? = Person()
//    var creditCard: CreditCard? = CreditCard()
//    creditCard?.number = 44442222555666
//
//    // leak mamory or reference cycle
//    // two links to var
//    personCreditCard?.creditCard = creditCard
//    creditCard?.cardHolder = personCreditCard
//    
//    personCreditCard = nil
//    creditCard = nil
//}
//
//// work with closure
//
//class Animal {
//    var name: String = "Somick"
//    var command: () -> Void = {} // closure
//    
//    deinit {
//        print("Animal deinit")
//    }
//}
//
//unowned var globalPat: Animal
//
//do{
//    var pet: Animal = Animal()
//    pet.command = { [unowned pet] in  // link to pet weak or unowned
//        print( pet.name, "this is his name.")
//    }
//    pet.command()
//}
//
//// globalPat.name
//
//protocol MyProtocol: AnyObject{}
//class MyClass{
//    weak var prot: MyProtocol?
//}

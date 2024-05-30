import UIKit

var greeting = "Hello, playground"

class Human{
    
    lazy var avatar3D:String = "012020030" // lazy property
    
    static let species: String = "Mammal" // static property
    static var species1: String = "Mammal" // static property
    
    //stored property
    var height: Double
    var weight: Double {
        willSet(newWeightValue){
            print("Will set from weight now \(newWeightValue).") // we can use newValue not newWeightValue
        }
        didSet(oldWeightValue){
            print("Did set from weight \(oldWeightValue)") // we can use oldValue
        }
    }
    
    // computer property
    
    var iq: Double{
        get{                                    // get value
            print("Pass IQ test")
            return Double.random(in: 0...200)
        }
        set(newIQ){                             // set new value
            print("Set IQ \(newIQ)")
        }
    }
    
    // lazy var iq:Double = {return Double.random(in: 0...200)}()      // sort lazy computer property should be with () and setup one time
    
    
    // same property without set - (setting value)
//    var iq: Double{
//        print("Pass IQ test")
//        return Double.random(in: 0...200)
//    }
    // OR short
//    var iq: Double{Double.random(in: 0...200)}
    
    // init
    init(height: Double, weight: Double) {
        self.height = height
        self.weight = weight
    }
    
    func lose(weight: Double){
        self.weight -= weight
    }
}



func foo(f:Double){
    print("Call function foo.")
}

var me = Human(height: 53, weight: 3.2)
var sister = Human(height: 44, weight: 3.9)
print(me.weight)
//me.height
//me.weight
//me.lose(weight: 1.2)
//print(me.iq)
//me.iq = 120
me.avatar3D = "010111100110"
me.weight = 20
foo(f: me.weight)
Human.species




import UIKit

var greeting = "Hello, playground"

class Vehicle {  // base/super class for all classes below
    var currentSpeed = 0.0  // stored property
    final var price: Double = 0.0 // prevent overriding the var
    
    var description: String{  // computer property , only get
        return "traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise(){
       // print("peep peep" )
    }
    
    final func changToRuble (){  // prevent overriding
        price * 91
    }
}

var vehicle1 = Vehicle()
vehicle1.currentSpeed = 15
print(vehicle1.description)


class Bicycle: Vehicle { //
    var hasBasket = false
}

var bicycle1 = Bicycle()
bicycle1.currentSpeed = 7 //propery from Vehicle class
print(bicycle1.description)  //propery from Vehicle class
bicycle1.hasBasket = true //new propery Bicycle class

class Tandem: Bicycle {
    var currentNumberOfSeats = 0
}

var bicicleTandem1 = Tandem()
bicicleTandem1.currentSpeed // Vehicle class
bicicleTandem1.hasBasket   // Bicycle calss
bicicleTandem1.currentNumberOfSeats // Tandem class


var testVar: Vehicle = bicicleTandem1  // acces property in Vehecle class only
testVar.currentSpeed = 20



func sortBySpeed(_ vehicles: [Vehicle]){ // can work with all classes bic,veh,tan
    
}

sortBySpeed([bicycle1, vehicle1, bicicleTandem1])

//______________ Overriding

class Train: Vehicle {
    
    var comfortClass: String = "Basic" {
        willSet{ // new value
            print("Comfort class willSet")
        }
        didSet{ // old value
            print("Comfort class didSet")
        }
    }
    
    override var currentSpeed: Double {
        get{
            super.currentSpeed  //super.  read form Super/Base class
        }
        set{
            super.currentSpeed = newValue + 10
            if currentSpeed > 100 {
                super.currentSpeed = 100
            }
        }
    }
    
    
    override var description: String{
        super.description + " This is a train"  // read from Super class
    }
    override func makeNoise() {
        super.makeNoise() // read from Super class
        print("Choo Choo")
    }
}

vehicle1.makeNoise()
var train1 = Train()
train1.currentSpeed = 99
train1.makeNoise()
train1.comfortClass
print(vehicle1.description)
print(train1.description)
print(train1.currentSpeed)

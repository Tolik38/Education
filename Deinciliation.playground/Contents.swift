import UIKit

var greeting = "Hello, playground"

class Boomb{
    var damage = 50
    
    // ARC
    deinit{
        print("Boom!")
    }
}

class AirBoomb: Boomb{
    var speed:Double = 80.0
    deinit {
        print("Air Boomb!")
    }
}

do{
    var boomb = Boomb()
    print("end of DO scope")
}

print("--------Playground scope--------")

var boombNil:AirBoomb? = AirBoomb()
boombNil?.speed
boombNil?.damage
boombNil = nil

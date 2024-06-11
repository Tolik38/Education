import UIKit

struct HumanStruct {
    var name: String = ""
    var salaryInUSD: Double = 0.0
    
    init(){
        salaryInUSD = 500
    }
    
    init (name: String, salary: Double = 500) {
        self.name = name
        self.salaryInUSD = salary
        
        myFunc()
    }
    
    init (name: String, salaryInRub: Double){
        self.name = name
        self.salaryInUSD = salaryInRub / 90
    }
    
    init (name: String, salaryInBitcoin: Double){
        self.init(name: name, salary: salaryInBitcoin * 19000)
        
    }
    
    func myFunc(){
        print(self.name)
    }
}

var human = HumanStruct(name: "Tolik")
human.name
human.salaryInUSD

class HumanClass {
    var name: String = ""
    var salaryInUSD: Double = 0.0
    
    init(){
        salaryInUSD = 500
    }
    
   required init (name: String, salary: Double = 500) {
        self.name = name
        self.salaryInUSD = salary
        
        myFunc()
    }
    
    init? (name: String, salaryInRub: Double){ // init? - this is for failable init and return nill if it fail
        guard salaryInRub >= 50000 else {return nil} // can use if statment but guard is better if function not continius
        self.name = name
        self.salaryInUSD = salaryInRub / 90
    }
    
    convenience init (name: String, salaryInBitcoin: Double){  // convenience init need to call another init
        self.init(name: name, salary: salaryInBitcoin * 19000)
        self.name += "!"
        
    }
    
    func myFunc(){
        print(self.name)
    }
}

class iOSProgrammer: HumanClass{
    var language: String
    
    init(language: String = "Swift") {
        self.language = language
        super.init(name: "", salary: 600) // super.init need to init from superClass
    }
    
    required init(name: String, salary: Double = 500) { // requred - the init will force initilazed
        print("hey required init")
        language = "unknown"
        super.init(name: name, salary: salary)
    }
    
}

var humanClass = HumanClass(name: "Tolik", salaryInBitcoin: 2)
humanClass.name
humanClass.salaryInUSD

var programmer = iOSProgrammer()
programmer.name
programmer.language
programmer.salaryInUSD

var programmerRu = HumanClass(name: "Tolik", salaryInRub: 40000)
programmerRu?.name
programmerRu?.salaryInUSD


enum Planets {
    case mer
    case ven
    case erth
    
    init?(number: Int) { // init? - failble init if it error return nil
        switch number{
        case 1: self = .mer
        case 2: self = .ven
        case 3: self = .erth
        default: return nil
        }
    }
}

var myPlanet = Planets(number: 2)

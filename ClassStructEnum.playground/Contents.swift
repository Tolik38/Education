import UIKit

var greeting = "Hello, playground"

enum SomeType{
    case south
    case west
    case north
    case east
    
    mutating func myFunc(){
        self = SomeType.south
    }
}

struct UserStruct{
    struct MyStruct{
        var varStruct:String
    }
    var name: String
    
    func printName() {
        print(self.name)
    }
    mutating func changeName(newName : String){
        self.name = newName
    }
}

class UserClass {
    struct MyStruct{
        var abc: String
    }
    
    
    var name: String = ""
    var myEnum: SomeType = SomeType.north
    var myStuct: MyStruct = MyStruct(abc: "Hello!")
    
    func printName(){
        print(name)
    }
    func changeName(newName: String){
        self.name = newName
    }
}

var userStruct = UserStruct(name: "Tolik")
userStruct.changeName(newName: "Slava")
userStruct.printName()
var userStruct1 = UserStruct(name: "Ivan")
userStruct1.printName()


let userClass = UserClass()
let someConst: UserClass.MyStruct
var someConst1: UserStruct.MyStruct

let userStruct2 = UserStruct(name: "222")
var userStruct3 = userStruct2
userStruct3.name = "333"

print(userStruct2.name)
print(userStruct3.name)


var userClass2 = UserClass()
userClass2.name = "class - 222"
var userClass3 = userClass2
userClass3.name = "class - 333"

func changeUserClass(user: UserClass) {
    user.name = "555"
}

func changeUserStruct(user: inout UserStruct) {
    user.name = "444"
}
changeUserClass(user: userClass3)

changeUserStruct(user: &userStruct1)

print(userClass2.name)
print(userClass3.name)

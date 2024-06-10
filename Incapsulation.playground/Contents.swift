import UIKit

var greeting = "Hello, playground"

open class SomeOpenClass {}
public class SomePublicClass {
    var numberOfStudents = 300
}
internal class SomeInternalClass {}
fileprivate class SomeFileprivateClass {}
private class SomePivatClass {}

public var somePublicVariable = 0
internal let someInternalConstant = 0
fileprivate func someFilePrivateFunction() {}
private func somePrivateFunc() {}

// can add @testable for see the class in another module
class MyClass {  //  this is internal class - defalt
    public var somePublicVariable = 0
    internal let someInternalConstant = 0
    private(set) var somePrivateSetVariable = 12 // hide set, can't modificate
    fileprivate func someFilePrivateFunction() {
        somePrivateFunc()
        somePrivateSetVariable = 177  // but you can modificate inside this class (with hide set)
    }
    private func somePrivateFunc() {}
    
    class NestedType {}
}

var myClass = MyClass()

myClass.somePrivateSetVariable

internal class MyClassSubclass: MyClass {
    override func someFilePrivateFunction() {
        super.someFilePrivateFunction()
    }
    
}

internal class MyClassInternal {  //  this is internal class - defalt
    
    class NestedType {}
    
    private(set) var classProperty: SomePublicClass = SomePublicClass()
    public var somePublicVariable = 0
    internal let someInternalConstant = 0
    private(set) var somePrivateSetVariable = 12 // hide set, can't modificate
    fileprivate func someFilePrivateFunction() {
        somePrivateFunc()
        somePrivateSetVariable = 177  // but you can modificate inside this class (with hide set)
    }
    private func somePrivateFunc() {}
    
    func printClassProperty(){
        print(classProperty)
    }
    func setClassProperty(_ number: Int) {
        classProperty = SomePublicClass()
        classProperty.numberOfStudents = number
    }
    
}
var testClass = MyClassInternal()
print(testClass.classProperty.numberOfStudents)
testClass.classProperty.numberOfStudents = 222
print(testClass.classProperty.numberOfStudents)


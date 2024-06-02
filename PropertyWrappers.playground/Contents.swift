import UIKit

var greeting = "Hello, playground"

@propertyWrapper
struct TwentyOrLess {
    private var number: Int
    private var maximumValue: Int
    private(set) var projectedValue: Bool
    var wrappedValue: Int {
        get {return number}
        set {
            if newValue > maximumValue{
                projectedValue = true
            }else{
                projectedValue = false
            }
            number = min(newValue, maximumValue)}
    }
    
    init() {
        number = 0
        maximumValue = 20
        projectedValue = false
    }
    
    init(number: Int = 0, maximumValue: Int = 20) {
        self.number = number
        self.maximumValue = maximumValue
        projectedValue = false
    }
}


//struct SmallRectangle {
//    private var _height = TwentyOrLess()
//    private var _width = TwentyOrLess()
//    
//    var height: Int{
//        get {return _height.wrappedValue}
//        set {_height.wrappedValue = newValue}
//    }
//    var width: Int{
//        get {return _width.wrappedValue}
//        set {_width.wrappedValue = newValue}
//    }
//    
//}

// short struct
struct SmallRectangle {
    @TwentyOrLess(number: 10) var height: Int
    @TwentyOrLess(number: 20, maximumValue: 50) var width: Int
    
    mutating func update(width: Int, height: Int) -> Bool {
        self.height = height
        self.width = width
        
        return $height || $width
    }
}



var rect = SmallRectangle()
//rect.height = 20
//rect.width = 90
//
//rect.$height
//rect.$width

rect.update(width: 15, height: 40)

// local property
func example() {
    @TwentyOrLess var localVar: Int
    
    localVar = 25
    print(localVar)
}

example()

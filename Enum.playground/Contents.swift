import UIKit

var greeting = "Hello, playground"

enum Directions{
    case north
    case south
    case west
    case east
}

// Switch in enum

var direction = Directions.east

direction = .north

switch direction{
case.east:
    print("East")
case.north:
    print("North")
case.south:
    print("South")
case.west:
    print("West")
}

// mutating in enum

enum DirectionsMutating{
    case north
    case south
    case west
    case east
    
   mutating func turn180clockwise(){
        switch self {
        case.east:
            self = .west
        case.north:
            self = .south
        case.south:
            self = .north
        case.west:
            self = .east
        }
    }
}

var directionMutating : DirectionsMutating = .north
directionMutating.turn180clockwise()

switch directionMutating{
case.east:
    print("East")
case.north:
    print("North")
case.south:
    print("South")
case.west:
    print("West")
}

let enumArray: [DirectionsMutating] = [.east, .north, .south, .west]

for enumValue in enumArray{
    print("from array - \(enumValue)")
}

// raw value

enum DirectionsRawValue: Int {
    case north = 77
    case south
    case west
    case east
}

var directionRaw = DirectionsRawValue.east

directionRaw = .north

switch directionRaw{
case.east:
    print("East")
case.north:
    print("North")
case.south:
    print("South")
case.west:
    print("West")
}

let enumArrayRaw: [DirectionsRawValue] = [.east, .north, .south, .west]

for enumValue in enumArrayRaw{
    print("from rawValue - \(enumValue.rawValue)")
}

var newRawProtery = DirectionsRawValue(rawValue: 3)

// Associate Values

enum DirectionsAssociateValues{
    case north (damage: Int, equtment: [String])
    case south (health: Int, luck: Int)
    case west (name: String)
    case east (money: Double)
}

var directionAssociateValues = DirectionsAssociateValues.north(damage: 20, equtment: ["hammer", "AK-47"])
//directionAssociateValues = .west(name: "Tolik")


switch directionAssociateValues{
case.east:
    print("East")
case.north(let damage, let equtment):
    print("North - you got damage \(damage) and \(equtment)")
case.south:
    print("South")
case.west (let name):
    print("west value - \(name)")
}

// if case

if case .north = directionAssociateValues {
    print("You got flue!!!")
}

// recursive Enumerations

indirect enum MessageType {
    case image (UIImage)
    case text (String)
    case file (Data)
    case reply (MessageType)
}

let massage = MessageType.reply(MessageType.image(UIImage()))

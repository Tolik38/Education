import UIKit

enum VendinghMachineError: Error{
    case invalidSelection
    case insufficientFunds(coinNeeded: Int)
    case outOfStock
    
}

struct Item{
    var price: Int
    var count: Int
}

class VendinghMachine {
    
    var inventory = [
        "Candy bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory [name] else{
            throw VendinghMachineError.invalidSelection
            }
        
        guard item.count > 0 else {
            throw VendinghMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendinghMachineError.insufficientFunds(coinNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

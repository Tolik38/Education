import UIKit

//var greeting = "Hello, playground"
//
//var array = [Int]()
//var array1 = Array<Int>()
//
//var array2: [Int] = []
//var array3: Array<Int>
//
//array.append(1)
//array.count
//array.isEmpty
//array.append(contentsOf: [2,3,4])
//print(array)
//array.insert(10, at: 0)
//print(array)
//array += [5,6,7]
//print(array)
//array.remove(at: 0)
//print(array)
//array[0]
//array[...2]
//
//for element in array.enumerated() {
//    print(element)
//}
//
//for (index,element) in array.enumerated() {
//    print("\(index) = \(element)")
//}
//
//var filteredValue = array.filter { $0 < 5 }
//
//var mappedString = array.map{String($0)} // (Int) -> T
//var mappedDouble = array.map{Double($0)}
//print(mappedDouble)
//print(mappedString)
//var redicedValue = array.reduce(0) {$0 + $1}
//print(redicedValue)
//print(array.first(where: {($0 % 2) == 0}))
//__________________________________________

var set = Set<Int>()
var set1: Set<Int> = [1,2,3,4,4]
// hash

var houseAnimals: Set = ["dog","cat"]
let farmAnimals: Set = ["cow","chiken","sheep","dog","cat"]
let cityAnimals: Set = ["mouse","beard"]

farmAnimals.sorted()
var arrayAnimals = Array<String>(farmAnimals.sorted())
arrayAnimals.append("dog")
print(arrayAnimals, "-Array")
Set<String>(arrayAnimals)

let newSet1 = Set<String>(arrayAnimals)

print(farmAnimals)
print(arrayAnimals, "-sorted")

farmAnimals == newSet1
houseAnimals.isSubset(of: farmAnimals)
houseAnimals.isSuperset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isStrictSubset(of: newSet1)
farmAnimals.isStrictSuperset(of: newSet1)
houseAnimals.isDisjoint(with: cityAnimals)

houseAnimals.count
houseAnimals.isEmpty
houseAnimals.insert("dog")
houseAnimals.insert("dog")
houseAnimals.insert("dog")
houseAnimals.contains("fish")
print(houseAnimals)

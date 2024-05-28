import UIKit

var greeting = "Hello, playground"
var dictionayry = ["QWE":"Qwerty", "SDF":"asdfas", "ZXC":"sdfvsdfv"]
var dictionayry1 = [Int:String]()
var dictionayry2 = [Int:Int]()

dictionayry2.count
dictionayry2.capacity
dictionayry2.isEmpty

dictionayry2[5] = 55
dictionayry2[3] = 33
dictionayry2[10] = 100
print(dictionayry2)

dictionayry["SDF"] = "Hello"
dictionayry["ZXC"] = "Fixed"
print(dictionayry)

dictionayry.updateValue("kjsdnjkn", forKey: "SDF")
let value = dictionayry["SDF"]
dictionayry["SDF"] = nil
print(dictionayry)

for pair in dictionayry{
    print(pair)
}
for (key, value) in dictionayry{
    print(key + " " + value)
}
for (key) in dictionayry.keys{
    print(key)
}
for (value) in dictionayry.values{
    print(value)
}
 
var keyDict = dictionayry.keys
var keyDict2 = [String] (dictionayry.keys)

import UIKit

var str = "hello, world"

func recursionFunc(_ number:Int) {
    print(number)
 //   recursionFunc(number+1)
}
recursionFunc(1)

func sum(_ number:Int)->Int{
    if number == 1{
        return 1
    }else{
        return number+sum(number - 1)
    }
}

sum(1) //1,
sum(2) //2 -> 2+1 -> 2 + sum(2) -> sum(2)
sum(3) //3 -> 3+2+1 -> 3 + sum(3) -> sum(2)
sum(4) //4 -> 4+3+2+1 -> 4 + sum(4) -> sum(2)

func factorial (_ number: Int) -> Int{
    if number == 1{
        return 1
    } else {
        return number * factorial(number-1)
    }
}

// 4! = 4*3*2*1
factorial(1)
factorial(2)
factorial(3)
factorial(4)

func fibonacci (_ number: Int) -> Int{
    if number <= 1{
        return number
    } else {
        return  fibonacci(number - 1) + fibonacci(number - 2)
    }
}

//1,1,2,3,5,8,13,21,

fibonacci(8)

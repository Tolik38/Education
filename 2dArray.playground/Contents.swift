import UIKit

var board = Array(repeating: Array(repeating: 0, count: 8), count: 8)

func print(board: [[Int]]) {
    board.forEach({print($0)})
}

print(board: board)

//func change(board: inout [[Int]]) {
//    for (i, row) in board.enumerated() {
//        for (j, _) in row.enumerated(){
//            board[i][j] = 1
//        }
//    }
//}



func change(board: inout [[Int]]) {
    for (i, row) in board.enumerated() {
        for (j, _) in row.enumerated(){
            if i%2 == 0, j%2 == 0 {
                board[i][j] = 1
            }
        }
    }
}

change(board: &board)
print(board: board)g

 
var position = (3,4)

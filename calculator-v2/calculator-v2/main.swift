//
//  main.swift
//  calculator-v2
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 karvi90. All rights reserved.
//

import Foundation

//
//  main.swift
//  test
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 karvi90. All rights reserved.
//

import Foundation


let Add : (Int, Int) -> Int = { $0 + $1 }

let Minus : (Int, Int) -> Int = { $0 - $1 }

let Times : (Int, Int) -> Int = { $0 * $1 }

let Div : (Int, Int) -> Int = { $0 / $1 }


func mathOpBasic(i : Int, j : Int, op : (Int, Int) -> Int) -> Int {
    return op(i, j)
}
let result = mathOpBasic(2, j: 7) { _,_ in Times(3, 20) }
print("Result = \(result)")

func ArrayAdd(addThese: [Int]) -> Int {
    var total = 0
    for i in 0 ..< addThese.count {
        total += addThese[i]
    }
    return total
}

func ArrayTimes(addThese: [Int]) -> Int {
    var total = 1
    for i in 0 ..< addThese.count {
        total *= addThese[i]
    }
    return total
}

func ArrayCount(addThese: [Int]) -> Int {
    return addThese.count
}

func ArrayAvg(addThese: [Int]) -> Int {
    if (addThese.isEmpty) {
        return 0
    }
    return ((ArrayAdd(addThese)) / (ArrayCount(addThese)))
}


func mathOpArray(array : [Int], op : ([Int]) -> Int) -> Int {
    return op(array)
}
let resultArray = mathOpArray([1,1,2]) { _ in ArrayAvg([]) }
print("Result = \(resultArray)")


var points : (x: Int, y: Int) = (1,2)

typealias carpt = (Int, Int)

func addTwo(left : carpt, right: carpt) -> carpt {
    return (left.0 + right.0, left.1 + right.1)
}

var Points = [
    "x": 0,
    "y": 0
]

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

// Basic Math Functions
let Add : (Int, Int) -> Int = { $0 + $1 }

let Minus : (Int, Int) -> Int = { $0 - $1 }

let Times : (Int, Int) -> Int = { $0 * $1 }

let Div : (Int, Int) -> Int = { $0 / $1 }

// Generic Math Function
func mathOpBasic(i : Int, j : Int, op : (Int, Int) -> Int) -> Int {
    return op(i, j)
}
let result = mathOpBasic(2, j: 7) { _,_ in Times(3, 20) }
print("Result = \(result)")



// Array FUNctions
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

// Generic Array Function
func mathOpArray(array : [Int], op : ([Int]) -> Int) -> Int {
    return op(array)
}
let resultArray = mathOpArray([1,1,2]) { _ in ArrayAvg([]) }
print("Result = \(resultArray)")



// Points with Tuples
typealias Point = (Int, Int)

func AddPointsTuple(x : Point, y: Point) -> Point {
    return (x.0 + y.0, x.1 + y.1)
}
var output = AddPointsTuple((1,2), y: (3,4))
print("Result of Adding Points = \(output)")


func MinusPointsTuple(x : Point, y: Point) -> Point {
    return (x.0 - y.0, x.1 - y.1)
}
var outputLess = MinusPointsTuple((1,2), y: (3,4))
print("Result Minusing Points = \(outputLess)")


// Points with Dictionary
var Points = [
    "x": 0,
    "y": 0
]

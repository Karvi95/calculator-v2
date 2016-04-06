//
//  main.swift
//  calculator-v2
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
let result = mathOpBasic(1, j: 4) { Minus($0,$1) }
print("Result = \(result)")


// Array FUNctions
func ArrayAdd(addThese: [Int]) -> Int {
    var total = 0
    for i in 0 ..< addThese.count {
        total += addThese[i]
    }
    return total
}

func ArrayTimes(timesThese: [Int]) -> Int {
    var total = 1
    for i in 0 ..< timesThese.count {
        total *= timesThese[i]
    }
    return total
}

func ArrayCount(countThese: [Int]) -> Int {
    return countThese.count
}

func ArrayAvg(avgThese: [Int]) -> Int {
    if (avgThese.isEmpty) {
        return 0
    }
    return ((ArrayAdd(avgThese)) / (ArrayCount(avgThese)))
}

// Generic Array Function
func mathOpArray(array : [Int], op : ([Int]) -> Int) -> Int {
    return op(array)
}
let resultArray = mathOpArray([1]) { _ in ArrayTimes([1,2,3,4,5,6,7,8,9]) }
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


//Points with Dictionary
var PointDict = [String: Int](minimumCapacity: 1)

func AddPointsDict(one : [String: Int], two: [String: Int]) -> [String: Int] {
    if (one.keys.count != two.keys.count) {
        print("Operating on Points from different dimensions! Nothing was evaluated.")
        return [String: Int](minimumCapacity: 1)
    } else {
        for i in 0..<one.keys.count {
            PointDict["\(Array(one)[i].0)"] = (Array(one)[i].1 + Array(two)[i].1)
        }
        return PointDict
    }
}
var outputDict = AddPointsDict(["x": 1, "y" : 2], two: ["x": 3, "y" : 4])
print("Result of Adding PointsDict = \(outputDict)")


func MinusPointsDict(one : [String: Int], two: [String: Int]) -> [String: Int] {
    if (one.keys.count != two.keys.count) {
        print("Operating on Points from different dimensions! Nothing was evaluated.")
        return [String: Int](minimumCapacity: 1)
    } else {
        for i in 0..<one.keys.count {
            PointDict["\(Array(one)[i].0)"] = (Array(one)[i].1 - Array(two)[i].1)
        }
        return PointDict
    }
}
var outputDictLess = MinusPointsDict(["x": 1], two: ["x": 3, "y" : 4])
print("Result of Minusing PointsDict = \(outputDictLess)")

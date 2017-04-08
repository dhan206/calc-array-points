//
//  main.swift
//  CalcArrayPoints
//
//  Created by Derek Han on 4/7/17.
//  Copyright © 2017 Derek Han. All rights reserved.
//

import Foundation


/*              BASIC CALCULATOR FUNCTIONS              */

// Add function that takes in two integer parameters and returns the result of adding them together. Returns the integer result.
func add(left: Int, right: Int) -> Int {
    return left + right
}

// Subtract function that takes in two integer parameters and returns the result of subtracting the right from left. Returns the integer result.
func subtract(left: Int, right: Int) -> Int {
    return left - right;
}

// Add function that takes in two double parameters and returns the result of adding them together. Returns the double result.
func add(left: Double, right: Double) -> Double {
    return left + right
}

// Subtract function that takes in two double parameters and returns the result of subtracting the right from left. Returns the double result.
func subtract(left: Double, right: Double) -> Double {
    return left - right;
}

// Multiply function that takes in two integer parameters and returns the result of multiplying them together. Returns the integer result.
func multiply(left: Int, right: Int) -> Int {
    return left * right;
}

// Divide function that takes in two integer parameters and returns the result of dividing the left by the right. Returns the integer result.
func divide(left: Int, right: Int) -> Int {
    return left / right;
}

// Generic math function that takes in two integer paramters and a math operation function to be operated on the two integer numbers. Returns the integer result.
func mathOperation(left: Int, right: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right)
}


/*              ARRAY CALCULATOR FUNCTIONS              */

// Add function that takes in an array of integers and returns the integer value of adding the numbers in the array together. Returns the integer result.
func add(array: [Int]) -> Int {
    var sum = 0
    for number in array {
        sum = add(left: sum, right: number) // sum = sum + number
    }
    return sum
}

// Multiply function that takes in an array of integers and returns the integer value of multiply the numbers in the array together. Returns the integer result.
func multiply(array: [Int]) -> Int {
    var product = 1
    for number in array {
        product = multiply(left: product, right: number) // product = product * number
    }
    return product
}

// Count function that takes in an array of integers and returns the count of integers in the array. Returns the integer result.
func count(array: [Int]) -> Int {
    return array.count
}

// Average function that takes in an array of integers and returns the average value inside of the array. Returns the integer result.
func average(array: [Int]) -> Int {
    return divide(left: add(array: array), right: count(array: array))
}

// Generic math function that takes in an integer array and a math operation to be operated on the inter array. Returns the integer result.
func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}


/*              TUPLE CALCULATION FUNCTIONS             */

// Checks if the passed tuple contains exactly two numbers
func isValidTuple(test: Any?) -> Bool {
    return test is (NSNumber, NSNumber)
}

// Add function that adds two tuple points with Int coordinates. Returns the resulting tuple.
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    if (isValidTuple(test: p1) && isValidTuple(test: p2)) {
        return (add(left: p1.0, right: p2.0), add(left: p1.1, right: p2.1))
    } else {
        return (0,0)
    }
}

// Subtract function that subtracts two tuple points with Int coordinates. Returns the resulting tuple.
func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    if (isValidTuple(test: p1) && isValidTuple(test: p2)) {
        return (subtract(left: p1.0, right: p2.0), subtract(left: p1.1, right: p2.1))
    } else {
        return (0,0)
    }
}


/*              DICTIONARY POINT CALCULATION FUNCTIONS              */

// Checks if the passed dictionarys are valid points with both "x" and "y"
func isValidPoint(p1: [String: Any]?, p2: [String: Any]?) -> Bool {
    var valid = false
    if p1 != nil && p2 != nil {
        if  p1!["x"] != nil &&
            p1!["y"] != nil &&
            p2!["x"] != nil &&
            p2!["y"] != nil {
            valid = true
        }
    }
    return valid
}

// Add function that takes in a dictionary with Int coordinate values "x" and "y" and adds the two points. Returns the resulting dictionary.
func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    var result = [:] as [String : Int]
    if isValidPoint(p1: p1, p2: p2) {
        result["x"] = add(left: (p1?["x"]!)!, right: (p2?["x"])!)
        result["y"] = add(left: (p1?["y"])!, right: (p2?["y"])!)
    }
    return result
}

// Subtract function that takes in a dictionary with Int coordinate values "x" and "y" and subtracts the two points. Returns the resulting dictionary.
func subtract(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    var result = [:] as [String : Int]
    if isValidPoint(p1: p1, p2: p2) {
        result["x"] = subtract(left: (p1?["x"]!)!, right: (p2?["x"])!)
        result["y"] = subtract(left: (p1?["y"])!, right: (p2?["y"])!)
    }
    return result
}

// Add function that takes in a dictionary with Double coordinate values "x" and "y" and adds the two points. Returns the resulting dictionary.
func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    var result = [:] as [String : Double]
    if isValidPoint(p1: p1, p2: p2) {
        result["x"] = add(left: (p1?["x"]!)!, right: (p2?["x"])!)
        result["y"] = add(left: (p1?["y"])!, right: (p2?["y"])!)
    }
    return result
}

// Subtract function that takes in a dictionary with Double coordinate values "x" and "y" and subtracts the two points. Returns the resulting dictionary.
func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    var result = [:] as [String : Double]
    if isValidPoint(p1: p1, p2: p2) {
        result["x"] = subtract(left: (p1?["x"]!)!, right: (p2?["x"])!)
        result["y"] = subtract(left: (p1?["y"])!, right: (p2?["y"])!)
    }
    return result
}

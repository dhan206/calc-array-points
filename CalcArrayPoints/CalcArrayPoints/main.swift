//
//  main.swift
//  CalcArrayPoints
//
//  Created by Derek Han on 4/7/17.
//  Copyright © 2017 Derek Han. All rights reserved.
//

import Foundation


// Add function that takes in two integer parameters and returns the result of adding them together. Returns the integer result.
func add(left: Int, right: Int) -> Int {
    return left + right
}

// Subtract function that takes in two integer parameters and returns the result of subtracting the right from left. Returns the integer result.
func subtract(left: Int, right: Int) -> Int {
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

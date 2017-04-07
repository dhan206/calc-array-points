import Foundation

func add(firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}

func subtract(firstNum: Int, secondNum: Int) -> Int {
    return firstNum - secondNum;
}

func multiply(firstNum: Int, secondNum: Int) -> Int {
    return firstNum * secondNum;
}

func divide(firstNum: Int, secondNum: Int) -> Int {
    return firstNum / secondNum;
}

func mathOperation(firstNum: Int, secondNum: Int, operation: (Int, Int) -> Int) -> Int {
    return mathOperation(firstNum, secondNum)
}

math(firstNum: 88, secondNum: 2, mathOperation: divide)

func add(arrayOfNumbers: [Int]) -> Int {
    var sum = 0
    for number in arrayOfNumbers {
        sum = add(firstNum: sum, secondNum: number) // sum = sum + number
    }
    
    return sum
}

func multiply(arrayOfNumbers: [Int]) -> Int {
    var product = 1
    for number in arrayOfNumbers {
       product = multiply(firstNum: product, secondNum: number) // product = product * number
    }
    
    return product
}

add(arrayOfNumbers: [1,2,3,4,5,6,7,8,9,10])
multiply(arrayOfNumbers: [1,2,0])

func count(arrayOfNumbers: [Int]) -> Int {
    return arrayOfNumbers.count
}

func average(arrayOfNumbers: [Int]) -> Int {
    return divide(firstNum: add(arrayOfNumbers: arrayOfNumbers), secondNum: count(arrayOfNumbers: arrayOfNumbers))
}

average(arrayOfNumbers: [1,2,3,4,5])
import Foundation

// Double every value of a given array

func maps(a: Array<Int>) -> Array<Int> {
    // write your code here...
    var newArray = a
    
    for element in newArray {
        newArray.append(element * 2)
    }
    return newArray
}

// Turn any number into it's opposite

func opposite(number: Double) -> Double {
  var positive = number
    if number < 0 {
        return abs(number)
    } else {
        positive = (0 - number)
        return positive
    }
}

// Find the nth Digit of a Number - Swift 5

func findDigit(_ num:Int, _ nth: Int) -> Int {
    var counter = nth
    
    if num < 0 {
        counter = abs(counter)
    }
    
    if nth <= 0 {
        return -1
    }

    let intToString = String(num) // Transform the number into a string
    let digits = intToString.compactMap{ $0.wholeNumberValue } // Transfrom the string into an array of numbers
    let numberOfDigits = digits.count
    let goodElement = numberOfDigits - counter
    
    if counter > numberOfDigits {
        return 0
    }
    
    return digits[goodElement]
}

// Find the nth Digit of a Number - Swift 4


func findDigit2(_ num:Int, _ nth: Int) -> Int {
    var counter = nth
    
    if num < 0 {
        counter = abs(counter)
    }
    
    if nth <= 0 {
        return -1
    }
    
    let intToString = String(num) // Transform the number into a string
    let digits = intToString.flatMap{Int(String($0))} // Transfrom the string into an array of numbers
    let numberOfDigits = digits.count
    let goodElement = numberOfDigits - counter
    
    if counter > numberOfDigits {
        return 0
    }
    
    return digits[goodElement]
}


// Number of Decimal Digits

func digits(num n: UInt64) -> Int {
    let intToString = String(n) // Transform the number into a string
    let digits = intToString.flatMap{Int(String($0))}
    
    return digits.count
}

// Persistent Bugger.

func persistence(for num: Int) -> Int {
    var number = num
    var times = 0
    while(String(number).count != 1) {
        var sum = 1
        for c in String(number) {
            sum *= Int("\(c)")!
        }
        number = sum
        print(sum)
        times += 1
    }
    return times
}

persistence(for: 34)

//

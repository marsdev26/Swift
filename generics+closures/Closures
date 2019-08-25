func printString(_ string: String) {
    print("Printing the string passed in as an argument: \(string)" )
}

printString("Test")

let stringPrinterFunction = printString
stringPrinterFunction("Test2")

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let addTwoNumbers = sum
addTwoNumbers(2,5)

// Functions as Parameters

func displayString(usingFunction function: (String) -> Void) {
    function("Test inside function")
}

displayString(usingFunction: printString)

func addTwo(to number: Int) -> Int {
    return number + 2
}

let addition = addTwo
let result = addition(5)

extension Int {
    func applyOperation(_ operation: (Int) -> Int) -> Int {
        return operation(self)
    }
}

func double(_ number: Int) -> Int {
    return number * 2
}

10.applyOperation(double)

func closestMultipleOfSix(_ value: Int) -> Int {
    for x in 1...100 {
        let multiple = x * 6
        
        if multiple - value < 6 && multiple > value {
            return multiple
        } else if multiple == value {
            return value
        }
    }
    return 0
}

closestMultipleOfSix(19)

32.applyOperation(closestMultipleOfSix)

typealias IntegerFunction = (Int) -> ()

func gameCounter() -> IntegerFunction {
    
    var localCounter = 0
    
    func increment(_ i: Int) {
        localCounter += i
        print("Local counter value: \(localCounter)")
    }
    
    return increment
}

let counter = gameCounter()
counter(1)
counter(3)

let anotherCounter = gameCounter()
print("******")
anotherCounter(5)


// EXERCICES

extension String {
    func transform(_ myfunc: (String) -> String) -> String {
        return myfunc(self)
    }
}

func removeVowels(from mystring: String) -> String {
    let vowels:[Character] = ["a","e","i","o","u","y"]
    var output = ""
    for a in mystring {
        if vowels.contains(a) != true {
            output += String(a)
        }
    }
    return output
    }

let result3 = "test".transform(removeVowels)


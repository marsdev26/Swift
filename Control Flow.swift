var todo: [String] = ["Finish collections course", "Buy groceries", "Respond to emails", "Pickup dry cleaning", "Order books online", "Mow the lawn"]

for task in todo {
    print(task)
}

// Ranges
for number in 1...10 {
    print("\(number) times 5 is equal to",number * 5)
}


var results: [Int] = []
for multiplier in 1...10 {
    results.append(multiplier * 6)
}

// While Loops

var x = 0
while x <= 20 {
    print(x)
    x += 1
}
print(todo)
var index = 0

while index < todo.count {
    print(todo[index])
    index += 1
}

// Repeat While

var counter = 1
while  counter < 1 {
    print("I am inside the while loop")
    counter += 1
}

repeat {
    print("I am inside of the repeat loop")
    counter += 1
} while counter < 1

// If Statements

var temperature = 1

if temperature < 12 {
    print("It's getting cold, lets get that jacket out")
} else if temperature < 18 {
    print("It's getting chilly, bring a sweater")
} else {
    print("A t-shirt is fine")
}

// Logical Operators

if temperature > 7 && temperature < 12 {
    print("Might want ot get a scarf with that jacket")
}

var isRaining = true
var isSnowing = false

if isRaining || isSnowing {
    print("Get your boots")
}

if !isRaining {
    print("Sun is out")
}

if isRaining && isSnowing && temperature < 2 {
    print("Get gloves")
}

if (isRaining || isSnowing) && temperature < 2 {
    print("Get gloves too")
}

// Switch Statement

let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGW", "JFK", "ORY"]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK":  print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("France")
    case "HKG": print("Hong Kong")
    default: print("I don't know which city that airport is in")
    }
}

import GameKit

let randomTemperature = GKRandomSource.sharedRandom().nextInt(upperBound: 150)
print(randomTemperature)

switch randomTemperature {
case 0..<32: print("Don't go out")
case 32..<45: print("It's quite cold, you'll need a jacket")
case 45..<70: print("Chilly, wear a light sweater")
case 70...100: print("It's quite hot, get a t-shirt out")
default: print("Don't even go out")
}

var n = 10
/* func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    if n%3 == 0 && n%5 == 0 {
    return "FizzBuzz"
    } else if n%3 == 0 {
        return "Fizz"
    } else if n%5 == 0 {
        return "Buzz"
    } else {
    return "n"
    }
    // End code
    return "\(n)"
}
*/



class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: String) {
        print("Do nothing! I am a machine!")
    }
}

// Enter your code below

class Robot: Machine {
    
    override func move(_ direction: String) {
        switch direction {
        case "Up": location.y += 1
        case "Down": location.y -= 1
        case "Left": location.x -= 1
        case "Right": location.x += 1
        default: break
        }
    }
    
}

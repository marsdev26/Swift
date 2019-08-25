// Area calculation for room #2

let secondLength = 14
let secondWidth = 8

let secondArea = secondWidth * secondLength

// Area calculation for room #1

func area(length: Int, width: Int) -> Int {
    let areaOfRoom = length * width
    return areaOfRoom
}

let areaOfFirstRoom = area(length: 14, width: 12)
let areaOfSecondRoom = area(length: 14, width: 8)

// Argument Labels

func remove(havingValue value: String) {
    print(value)
}

remove(havingValue: "A")

// Default Values
func carpetCostHaving(length: Int, width: Int, carpetColor color: String = "tan") -> (price: Int, color: String) {
    
    // Grey carpet - $1/sq ft
    // Tan carpet - $2/sq ft
    // Deep Blue carpet - $4/sq ft
    
    var price = 0
    let areaOfRoom = area(length: length, width: width)
    switch color {
    case "gray": price = areaOfRoom * 1
    case "tan" : price = areaOfRoom * 2
    case "blue": price = areaOfRoom * 4
    default: price = 0
    }
    return (price, color)
}

carpetCostHaving(length: 10, width: 20, carpetColor: "tan")
let result = carpetCostHaving(length: 10, width: 20)

result.color

// Scope

func arrayModifier(array: [Int]) {
    var arrayOfInts = array
    arrayOfInts.append(5)
    _ = arrayOfInts
}

var arrayOfInts = [1,2,3,4]
arrayModifier(array: arrayOfInts)



func coordinates(for location: String) -> (Double, Double) {
    var latlon = (0.0,0.0)
    switch location {
        
    case "Eiffel Tower":  latlon = (48.8582, 2.2945)
    case "Great Pyramid": latlon = (29.9792, 31.1344)
    case "Sydney Opera House": latlon = (33.8587, 151.2140)
    default: latlon = (0,0)
    }
    return latlon
}


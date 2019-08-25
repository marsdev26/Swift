// Generics

var d = 10
var e = 12



var g = "string1"
var h = "string2"



func swapValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

swapValues(&d, &e)
swapValues(&g, &h)



func transform<T,U>(arg: T, operation: (T) -> U) -> U{
   return operation(arg)
}

func stringToInt(_ a: String) -> Int {
    guard let value = Int(a) else {
        fatalError()
    }
    return value
}

transform(arg: "1", operation: stringToInt)

func intToString(_ a: Int) -> String {
    return String(a)
}

transform(arg: 3, operation: intToString)

func findKey<Key, Value: Equatable>(for value: Value, in dictionary: Dictionary<Key, Value>) -> Key? {
    for (iterKey, iterValue) in dictionary {
        if iterValue == value {
            return iterKey
        }
    }
    return nil
}

let airportCodes = ["CDG":"Charles de Gaulle", "HKG": "Hong Kong"]

findKey(for: "Charles de Gaulle", in: airportCodes)

enum Snack {
    case gum
    case cookie
}

struct Item {
    let price: Int
    let quantity: Int
}

extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.price == rhs.price && lhs.quantity == rhs.quantity
    }
}

let inventory: [Snack: Item] = [
    .gum: Item(price: 1, quantity: 5),
    .cookie: Item(price: 2, quantity: 3)
]

let someItem = Item(price: 2, quantity: 3)

findKey(for: someItem, in: inventory)

// Class Constraints

class Shape {}

func center<T: Shape>(of shape: T) {
    print("Called")
}

let testShape = Shape()
center(of: testShape)

class Square: Shape {}

let testSquare = Square()
center(of: testSquare)


// EXERCICES
 
 func duplicate<T>(_ item: T, _ numberOfTimes: Int) -> [T] {
    var array: [T] = []
    var i = 0
    while i < numberOfTimes {
        array.append(item)
        i += 1
    }
    print(array)
    return array
}

duplicate(1, 4)

 
 
 func map<T,U>(array: [T], transformation: (T) -> U ) -> [U] {
    var newArray:[U] = []
    for i in array {
        newArray.append(transformation(i))
 }
 return newArray
 }
 
 
 
 func largest<T: Comparable>(in array: [T]) -> T? {
 let a = array.max()
 return a
 }
 


let list = [1,2,3]

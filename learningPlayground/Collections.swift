// Collections and Control Flow

// Arrays
var todo2 = [1,2,3]
var todo: [String] = ["Finish collection course", "Buy groceries", "Respond to emails"]

// Add new item to end of array using append method
todo.append("Pick up dry cleaning")
 
// Concatenating two arrays
[1,2,3] + [4]

// Concatenate array containing string literal to todo
//todo = todo + ["Order book online"]
// Performing the same operation using the unary addition operator
todo
todo += ["Order book online"]
todo
// Immutable arrays
let secondTaskList = ["Pay the bills"]

// secondTaskList += ["Clean the kitchen"] Error
// secondTaskList.append("Clean the kitchen") Error

// Reading from Arrays

let firstTask = todo[0]
firstTask
let thirdTask = todo[2]
              // todo[n] <-- is called a Subscript Notation

//Modyfying Existing Values in an Array
// (Mutating an array)

todo[4] = "Brush teeth"
todo[0] = "Watch Treehouse content"
todo

// Insert Using Indexes
todo
todo.insert("Watch TV", at: 2)

// Removing Items from Arrays

todo.remove(at: 2)
todo
todo.count
// todo[4]
// todo[6]: CRASH

// Dealing with Non Existent Data

var a = [0,1,2]
a += [8]




// Dictionaries

/*
 
    Airport Code(Key)      Airport Name(Value)
 
    LGA                     La Guardia
    LHR                     Heathrow
    CDG                     Charles de Gaulle
    HKG                     Honk Kong International
    TLV                     Tel Aviv Ben Gurion
 
 */

var airportCodes: [String: String] = [
    "LGA": "La Guardia",
    "LHR": "Heathrow",
    "CDG": "Charles de Gaulle",
    "HKG": "Honk Kong International",
    "TLV": "Tel Aviv Ben Gurion"
]
airportCodes

let currentWeather = ["Temperature": 75.0]

// Reading from a dictionary

airportCodes["LGA"]
airportCodes["TLV"]

// Inserting Key Value Pairs

airportCodes["SYD"] = "Sydney Airport"
airportCodes
airportCodes["LGA"] = "La Guardia International Airport"
airportCodes.updateValue("Dublin Airport", forKey: "DUB")
airportCodes

// Removing Key Value Pairs

airportCodes["SYD"] = nil
airportCodes
airportCodes.removeValue(forKey: "CDG")
airportCodes

// Dealing with Non Existent Data
airportCodes
let newYorkAirport = airportCodes["LGA"]
let orlandoAirport = airportCodes["MCO"]
airportCodes





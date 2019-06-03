struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: Error {
    case invalidData(description: String)
    case someError
}

func friend(from dict: [String:String]) throws -> Friend {
    guard let name = dict["name"] else {
        throw FriendError.invalidData(description: "Invalid name value")
    }
    
    guard let age = dict["age"] else {
        throw FriendError.invalidData(description: "Invalid age value")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}

func send(message: String, to friend: Friend) {

}

let response = [
    "name": "Moshé",
    "age" : "19",
    "address": "someAddress"
]

do {
    let myFriend = try friend(from: response)
    send(message: "Test", to: myFriend)
} catch FriendError.invalidData(let description) {
    // Inform the user that they passed in invalidData
    print(description)
} catch FriendError.someError {
    
}


func filterPositives(numbers:[Int]) -> [Int] {
    var output = [Int]()
    
    for number in numbers {
        if number >= 0 {
            output.append(number)
        }
    }
    return output
}
print(filterPositives(numbers: [4, 8, 0, -4, 7]))




/* enum ParserError: Error {
    case emptyDictionary
    case invalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        guard let data = data else {
            throw ParserError.emptyDictionary
        }
        guard let key = data["someKey"] else {
            throw ParserError.invalidKey
        }
    }
}

let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)


do {
    var data1 = try Parser(data: data)

} catch ParserError.emptyDictionary {
    print("Error1")
} catch ParserError.invalidKey {
    print("Error2")
}


try parser.parse()
*/

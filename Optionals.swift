struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func fullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
    
}

let me = Person(firstName: "Moshé", middleName: nil , lastName: "Marciano")
me.fullName()

let airportCodes = ["CDG": "Charles De Gaulle"]
let newYorkAirport = airportCodes["JFK"]

// Optional Binding Using If Let

if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("That key doesn't exist")
}

let weatherDictionary: [String: [String:String]] = [
    "currently": ["temperature": "22.3"],
    "daily": ["temperature": "22.3"],
    "weekly": ["temperature": "22.3"]
]

if let dailyWeather = weatherDictionary["daily"] {
    if let highTemp = dailyWeather["temperature"] {
        print(highTemp)
    }
}

if let dailyWeather = weatherDictionary["daily"],
    let highTemperature = dailyWeather["temperature"] {
    print(highTemperature)
}

// Downside to Using If Let

struct Friend {
    let name: String
    let age: String
    let address: String?
}


func new(friendDictionary: [String: String]) -> Friend? {
    if let name = friendDictionary["name"], let age = friendDictionary["age"] {
        let address = friendDictionary["address"]
        return Friend(name: name, age: age, address: address)
    } else {
        return nil
    }

}

// Early Exit

func newFriend(friendDictionary: [String: String]) -> Friend? {
    guard let name = friendDictionary["name"], let age = friendDictionary["age"] else {
        return nil
    }
    
    let address = friendDictionary["address"]
    
    return Friend(name: name, age: age, address: address)
}

// Raw Values

enum Coin: Double {
    case penny = 0.01
    case nickel = 0.05
    case dime = 0.1
    case quarter = 0.25
}

let coins: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double {
    var total: Double = 0
    
    for coin in coins {
        total += coin.rawValue
    }
    
    return total
}

sum(having: coins)

enum HTTP: String {
    case post
    case get
    case put
    case delete
}

HTTP.delete.rawValue

enum HTTPStatusCode: Int {
    case success = 200
    case forbidden = 403
    case unauthorized = 401
    case notfound = 404
}

let statusCode = 200

let httpStatusCode = HTTPStatusCode(rawValue: statusCode)




/* struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    
    
    init?(dict: [String: String]) {
       
        guard let title = dict["title"],
            let author = dict["author"] else {
            return nil
        }
        self.title = title
        self.author = author
        self.price = dict["price"]
        self.pubDate = dict["pubDate"]
    }
    
    
}
*/

/* EXERCICES
 
 let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

// Enter code below

if let spectreMovie = movieDictionary["Spectre"],
    let castActor = spectreMovie["cast"],
    let mainRole: String = castActor[0] {
    leadActor += mainRole
}
*/



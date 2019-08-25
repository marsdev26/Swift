// Extensions

extension Int {
    var isOdd: Bool {
        return self % 2 != 0
    }
}

3.isOdd
2.isOdd

// Protocol Conformance Through Extensions

import UIKit

protocol UniquelyIdentifiable {
    var uuid: Int { get }
}

extension UIView: UniquelyIdentifiable {
    var uuid: Int {
     return hash
    }
}

let view = UIView()
view.hash

view is UniquelyIdentifiable

// Protocol Extensions

protocol RandomNumberGenerator {
    func random() -> Int
}

extension RandomNumberGenerator {
    func random() -> Int {
        return Int(arc4random())
    }
}

class Generator: RandomNumberGenerator {
    func random() -> Int {
        return 2
    }
}

let generator = Generator()
generator.random()

protocol Person {
    var firstName: String { get }
    var lastName: String { get }
    var fullName: String { get }
    
    func greeting() -> String
}

extension Person {
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    func greeting() -> String {
        return "Hi my name is \(fullName)"
    }
}

struct User: Person {
    let firstName: String
    let lastName: String
    
    func greeting() -> String {
        return "Hey there nice to meet you, my name is \(fullName)"
    }
}

let user = User(firstName: "Moshé", lastName: "Marciano")
user.fullName
user.greeting()

let anotherUser: Person = User(firstName: "Craig", lastName: "Denis")
anotherUser.greeting()







// EXERCICES

/* extension String {
    func add(x: Int) -> Int? {
        if let y = Int(self) {
            return y + x
        } else {
            return nil
        }
        
    }
} */


/* protocol PrettyPrintable {
 var prettyDescription: String { get }
 }
 
 struct User {
 let name: String
 let ID: Int
 }
 
 // Enter your code below
 
 extension User: PrettyPrintable {
 var prettyDescription: String {
 return ("\(self.name) + \(self.ID)")
 }
 } */

let x1 = 0
let y1 = 0

let coordinate1: (x :Int, y: Int) = (0,0)
coordinate1.x

struct Point { // A struct is an object
    let x: Int // This is called a stored property
    let y: Int
   
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    /// Returns the surrounding points in range of
    /// the current one
    func points(inRange range: Int = 1 ) -> [Point] {
        var results = [Point]()
        let lowerBoundOfXRange = x - range
        let upperBoundOfXRange = x + range
        
        let lowerBoundOfYRange = y - range
        let upperBoundOfYRange = y + range
        
        for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
            for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
                let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
                results.append(coordinatePoint)
            }
        }
    
        return results
    }
}

let coordinatePoint = Point(x: 0, y: 0)
coordinatePoint.x
coordinatePoint.points()
coordinatePoint.x

 // Enemies

class Enemy {
    var life: Int = 2
    let position: Point
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    func decreaseLife(by factor: Int) {
        life -= factor
        
    }
 
}

class SuperEnemy: Enemy {
    let isSuper: Bool = true
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}



// Towers

class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    func fire(at enemy: Enemy) {
        if isInRange(of: enemy) {
            enemy.decreaseLife(by: strength)
            print("Touché")
        } else {
            print("Out of range")
        }
    }
    func isInRange(of enemy: Enemy) -> Bool {
        let availablePositions = position.points(inRange: range)
        
        for point in availablePositions {
            if point.x == enemy.position.x && point.y == enemy.position.y  {
                return true
            }
        }
        return false
    }
}

class LaserTower: Tower {
    
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    override func fire(at enemy: Enemy) {
        while enemy.life >= 0 {
            enemy.decreaseLife(by: strength)
        }
        print("Enemy destroyed")
    }
}


let tower = Tower(x: 0, y: 0 )
let enemy = Enemy(x: 1, y: 1)
let superEnemy = SuperEnemy(x: 1, y: 1)
let laserTower = LaserTower(x: 2, y: 2)
tower.fire(at: enemy)
tower.fire(at: superEnemy)
laserTower.fire(at: enemy)
laserTower.fire(at: superEnemy)

/* EXERCICES
 
 struct Person {
 let firstName: String
 let lastName: String
 func fullname() -> String {
 let fullName: String = (firstName + " " + lastName)
 return fullName
 }
 }
 
 var a = Person(firstName: "Moshé", lastName: "Marciano")
 a.fullname()
 */


/*
 struct RGBColor {
 let red: Double
 let green: Double
 let blue: Double
 let alpha: Double
 
 let description: String
 
 // Add your code below
 init(red: Double, green: Double, blue: Double, alpha: Double) {
 self.red = red
 self.green = green
 self.blue = blue
 self.alpha = alpha
 self.description = ("red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)")
 }
 
 */

/*
 class Shape {
    var numbersOfSides: Int
    init(numbersOfSides: Int) {
        self.numbersOfSides = numbersOfSides
    }
}

let someShape = Shape(numbersOfSides: 10)
*/

/*
  struct Location {
    let latitude: Double
    let longitude: Double
}
 
 class Business {
    let name: String
    let location: Location
    init(name: String, location: Location) {
        self.name = name
        self.location =  location
    }
}

let someBusiness = Business(name: "Mars", location: Location(latitude: 25.0, longitude: 26.0))
*/

/* class Vehicle {
    var numberOfDoors: Int
    var numberOfWheels: Int
    
    init(withDoors doors: Int, andWheels wheels: Int) {
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

// Enter your code below

class Car: Vehicle {
    let numberOfseats: Int = 4
    
}

let someCar = Car(withDoors: 10, andWheels: 10)
*/

/* class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

// Enter your code below

class Doctor: Person {
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    override func fullName() -> String {
        return "Dr. \(lastName)"
    }
}

let someDoctor = Doctor(firstName: "Moshé", lastName: "Marciano")
someDoctor.fullName()
*/


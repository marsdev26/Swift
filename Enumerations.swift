let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func dayType(for day: String) -> String {
    switch day {
    case "Saturday", "Sunday": return "Weekend"
    case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
    default: return "This isn't a valid day"
    }
}

func isNotificationMuted(on day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
}

// let result = dayType(for: week[4])
// let isMuted = isNotificationMuted(on : result)

enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

enum DayType {
    case weekday
    case weekend
}

func dayType(for day: Day) -> DayType {
    switch day {
    case .saturday, .sunday: return .weekend
    default: return .weekday
    }
}

func isNotificationMuted(on type: DayType) -> Bool {
    switch type {
    case .weekend: return true
    case .weekday: return false
    }
}

let type = dayType(for: .saturday)
let isMuted = isNotificationMuted(on: type)

import UIKit

enum ColorComponent {
    case rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat,alpha: CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .rgb(let red, let green, let blue, let alpha): return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
        case .hsb(let hue, let saturation, let brightness, let alpha): return UIColor(hue: hue/360.0
            , saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
        }
    }
}

ColorComponent.rgb(red: 61, green: 120, blue: 198, alpha: 1).color()


// Example of UIBarButtonItem instance
// let someButton = UIBarButtonItem(title: "A Title", style: .plain, target: nil, action: nil)

enum BarButton {
    case done(title: String)
    case edit(title: String)
    
    func button () -> UIBarButtonItem {
        switch self {
        case .done(let title): return UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
        case .edit(let title): return UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
        }
    }
}

let button = BarButton.done(title: "Save").button()


 
 /* EXERCICES
 
 class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

enum Direction {
    case left
    case right
    case up
    case down
}

class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(_ direction: Direction) {
        // Enter your code below
        switch direction {
        case .left: location.x -= 1
        case .right: location.x += 1
        case .up: location.y += 1
        case .down: location.y -= 1
        }
    }
}

 */


// Example of UIBarButtonItem instance
// let someButton = UIBarButtonItem(title: "A Title", style: .plain, target: nil, action: nil)


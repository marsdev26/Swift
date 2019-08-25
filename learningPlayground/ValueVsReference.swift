struct User {
    var fullName: String
    var email: String
    var age: Int
    
}

var someUser = User(fullName: "Moshé Marciano", email: "email@hotmail.com" , age: 19)
var anotherUser = someUser

class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
    self.fullName = name
    self.email = email
    self.age = age
    }
}

var somePerson = Person(name: "John Doe", email: "johnemail@gmail.com", age: 25)
var anotherPerson = somePerson


/* struct Tag {
    let name: String
}

struct Post {
    let title: String
    let author: String
    let tag: Tag
    
    func description() -> String {
        return ("\(title) by \(author). Filed under \(tag.name)")
    }
}
let firstPost = Post(title: "iOSDevelopment", author: "Apple", tag: Tag(name: "swift"))
firstPost.description()

*/


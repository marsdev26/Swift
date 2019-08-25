// Generic Types

var number: [Int] = []
var number2 = Array<Int>()

let city = "Jerusalem"
let streetName = Optional.some("123 Street")

var errorCode = Dictionary<Int, String>()

// Linked Lists

class LinkedListNode<Key> {
    let key: Key
    
    var next: LinkedListNode?
    weak var previous: LinkedListNode?
    
    init(key: Key) {
        self.key = key
    }
}

class LinkedList<Element>: CustomStringConvertible {
    typealias Node = LinkedListNode<Element>
    
    private var head: Node?
    
    var first: Node? {
        return head
    }
    
    var last: Node? {
        if var node = head {
            while node.next != nil {
                node = node.next!
            }
            return node
            
        } else {
            return nil
        }
    }
    
    func append(_ value: Element) {
        let new = Node(key: value)
        
        if let lastNode = last {
            lastNode.next = new
            new.previous = lastNode
        } else {
            head = new
        }
    }
    
    func node(atIndex index: Int) -> Node {
        var node = head
        
        var counter = 0
        
        while node != nil {
            if counter == index {
                return node!
            }

            counter += 1
            node = node!.next
        }
        fatalError("Index out of bounds")
    }
    
    func insert(_ value: Element, at index: Int) {
        let nodeAtIndex = node(atIndex: index)
        let nodeBeforeIndex = nodeAtIndex.previous
        
        let new = Node(key: value)
        new.previous = nodeBeforeIndex
        new.next = nodeAtIndex
        
        nodeAtIndex.previous = new
        nodeBeforeIndex?.next = new
        
        if nodeBeforeIndex == nil {
            head = new
        }
    }
    var description: String {
        var output = "["
        var node = head
        while node != nil {
            output += "\(node!.key)"
            node = node!.next
            if node != nil { output += ", " }
        }
        return output + "]"
    }
    
    }
let list = LinkedList<String>()
list.append("Swift")
list.append("Language")
list.insert("Programming", at: 1)
list.node(atIndex: 1).key

class LinkedIntegers: LinkedList<Int> {}

let listInt = LinkedIntegers()
listInt.append(1)

// EXERCICES

struct Queue<Element> {
    var array: [Element] = []
    
    var isEmpty: Bool {
        if array.isEmpty == true {
            return true
        } else {
            return false
        }
    }
    
    var count: Int {
        return array.count
    }
   mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    
   mutating func dequeue() -> Element? {
        if array.isEmpty == true {
            return nil
        } else {
            let element = array[0]
            array.removeFirst()
            return element
        }
    }
}

var queue = Queue(array: [1,2,3])
print(queue)
queue.dequeue()
print(queue)

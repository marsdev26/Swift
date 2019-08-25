// Linear Search

func linearSearch(list: [Int], target: Int) -> Int? {
    for (index, value) in list.enumerated() where value == target {
        return index
    }
    return nil
}

let numbers = [1,2,3,4,5,6,7,8,9,10,117]

linearSearch(list: numbers, target: 3)

// Linear Search2

func linear_search(list: [Int], target: Int) -> Int? {
    for i in list {
        if i == target {
            return list.firstIndex(of: i)
        }
    }
    return nil
}

linear_search(list: numbers, target: 117)

// Binary Search

func binarySearch(list: [Int], target: Int) -> Int? {
    var upperBound = 0
    var lowerBound = list.count - 1       
    
    while upperBound <= lowerBound {
        let mid = (upperBound + lowerBound)/2
        print(mid)
        if list[mid] == target {
            return mid
        } else if list[mid] < target {
           upperBound = mid + 1
        } else {
            lowerBound = mid - 1
        }
    }
    return nil
}

binarySearch(list: numbers, target: 1)

// Recursive Binary Search

func recursiveBinarySearch(list: [Int], target: Int, lower: Int, upper: Int) -> Int? {
    if lower > upper {
        return nil
    } else {
        let mid = (lower+upper)/2
            
        if list[mid] == target {
            return mid
        } else {
            if list[mid] < target {
                return recursiveBinarySearch(list: list, target: target, lower: mid + 1, upper: upper)
            } else {
                return recursiveBinarySearch(list: list, target: target, lower: lower, upper: mid - 1)
            }
        }
        
    }
}

recursiveBinarySearch(list: numbers, target: 10, lower: 0, upper: 10)

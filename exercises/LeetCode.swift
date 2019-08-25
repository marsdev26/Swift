
// 1
import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var index = 0
    var point: [Int] = [0,0]
    for i in a {
        if i > b[index] {
            point[0] += 1
        } else if i < b[index] {
            point[1] += 1
        }
        index += 1
    }
return point
}

// 2

func aVeryBigSum(ar: [Int]) -> Int {
    var sum = 0
    for i in ar {
        sum += i
    }
    return sum
}

// 3

func diagonalDifference(arr: [[Int]]) -> Int {
    let n = arr[0][0]
    var diagonal1 = 0
    var diagonal2 = 0
    for index in 1...n {
        diagonal1 += arr[index][index - 1]
        diagonal2 += arr[index][n - index]
    }
return abs(diagonal1 - diagonal2)
}

let array: [[Int]] = [
    [4],
    [11,2,4,3],
    [4,5,6,7],
    [10,8,-12,2],
    [1,4,6,9]
]

diagonalDifference(arr: array)

// 4 - Two Sum - Easy

class Solution {
   static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var res: [Int] = []
        var count =  nums.count
        
        for i in 0..<count {
            for j in i+1..<count {
                if nums[i] + nums[j] == target {
                    res.append(i)
                    res.append(j)
                }
            }
        }
        return res
    }
}

// 5 - Reverse Integer - Easy


class Solution2 {
   static func reverse(_ x: Int) -> Int {
        let x2 = String(x)
        var arrayOfDigits = x2.compactMap{ $0.wholeNumberValue }
        let reversedArray = arrayOfDigits.reversed()
        let result = reversedArray.map(String.init).joined()
        var resultFinal = 0
        if let finalResult = Int(result) {
           resultFinal = finalResult
        }
    if x < 0 {
        resultFinal = -resultFinal
    }
    if resultFinal >= 2147483647 {
        return 0
    } else if resultFinal <= -2147483648 {
        return 0
    } 
        return resultFinal
    
    }
    
}

Solution2.reverse(-321)

1534236469 > 2147483648

// 6 - Palindrome - Easy

class Solution3 {
    static func isPalindrome(_ x: Int) -> Bool {
        var isTrueOrFalse = true
        var xS = String(x)
        var Sx = String(xS.reversed())
        if xS == Sx {
            isTrueOrFalse = true
        } else {
            isTrueOrFalse = false
     
        }
        return isTrueOrFalse
    }
}

Solution3.isPalindrome(-11011)

// 7 - Assign Cookies- Easy

class Solution4 {
   static func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    var final: Int = 0
    for i in g {
            if i == s[i] {
                final += 1
                print(final)
            }
    
        }
        return 1
        
    }
}

let listG = [1,2,3]
let listS = [1,1]

Solution4.findContentChildren(listG, listS)



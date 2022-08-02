import UIKit

var greeting = "Hello, playground"
var text = "abcdefghijklmnopqrstuvwxyz"

// My Solution
func isTheLettersUniqe(_ param: String) -> Bool {
//    let set = Set(Array(param))
//    return set.count == param.count
    
    Set(param).count == param.count
}

isTheLettersUniqe(greeting)
isTheLettersUniqe(text)


// Alternative

/// = brue force approach =
///
/// That solution is correct with the example input and output I provided,
/// but you should be prepared to discuss that it doesn’t scale well:
/// calling contains() on an array is an O(n) operation, which means it gets slower as more items are added to the array.
/// If our text were in a language with very few duplicate characters, such as Chinese, this might cause performance issues.
///
func isTheLettersUniqe_Alternative(_ param: String) -> Bool {
    
    var usedLetters = [Character]()
    for p in param {
        if usedLetters.contains(p) {
            return false
        }
        usedLetters.append(p)
    }
    
    return true
}

isTheLettersUniqe_Alternative(greeting)

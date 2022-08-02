/**

 Write a function that accepts a String as its only parameter, and returns true if the string has
 only unique letters, taking letter case into account.
 Sample input and output
 • The string “No duplicates” should return true.
 • The string “abcdefghijklmnopqrstuvwxyz” should return true.
 • The string “AaBbCc” should return true because the challenge is case-sensitive.
 • The string “Hello, world” should return false because of the double Ls and double Os.
 For this initial challenge I’ll write some test cases for you, so that you have something to use in the future. These four assert() statements should all evaluate to true, and therefore not trigger an error:
 assert(challenge1(input: "No duplicates") == true, "Challenge 1
 failed")
 assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true,
 "Challenge 1 failed")
 assert(challenge1(input: "AaBbCc") == true, "Challenge 1
 failed")
 assert(challenge1(input: "Hello, world") == false, "Challenge 1
 failed")
 
 */

var greeting = "Hello, playground"
var text = "abcdefghijklmnopqrstuvwxyz"

func isTheLettersUniqe(_ param: String) -> Bool {
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

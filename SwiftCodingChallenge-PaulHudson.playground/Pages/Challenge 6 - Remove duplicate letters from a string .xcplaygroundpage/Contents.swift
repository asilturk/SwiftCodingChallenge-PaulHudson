
/**
 
 Write a function that accepts a string as its input, and returns the same string just with
 duplicate letters removed.
 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.
 Sample input and output
 • The string “wombat” should print “wombat”.
 • The string “hello” should print “helo”.
 • The string “Mississippi” should print “Misp”.

 */

import Foundation

func removeDuplicates(_ text: String) -> String {
    let set = Set(text)
    var result = [String]()
    
    for t in text where set.contains(t) && !result.contains(String(t)) {
        result.append(String(t))
    }
    
    return result.joined()
}

removeDuplicates("Missisipi")


func removeDuplicates_Alternative(_ text: String) -> String {
    let array = text.map { String($0) }
    let orderedSet = NSOrderedSet(array: array)
    let letters = orderedSet.array as! [String]
    
    return letters.joined()
}

removeDuplicates_Alternative("Missisipi")


func removeDuplicates_Alternative2(_ text: String) -> String {
    var array = [String]()
    for t in text where !array.contains(String(t)) {
        array.append(String(t))
    }
    return array.joined()
}

removeDuplicates_Alternative2("Missisipiii")

/**
 
 Write a function that accepts two strings, and returns true if one string is rotation of the other,
 taking letter case into account.
 Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
 Sample input and output
 • The string “abcde” and “eabcd” should return true.
 • The string “abcde” and “cdeab” should return true.
 • The string “abcde” and “abced” should return false; this is not a string rotation.
 • The string “abc” and “a” should return false; this is not a string rotation.

 */

/// var string = "Burak"
/// let y = string.dropFirst(3) // ak
/// let s = string.prefix(3) // Bur
///
func isRotated(_ text1: String, _ text2: String) -> Bool {
    var versions = [String]()
    for i in 0..<text1.count {
        let prefix = text1.prefix(i)
        let remaining = text1.dropFirst(i)
        versions.append("\(remaining)\(prefix)")
    }
    
    return versions.contains(text2)
}

isRotated("abcde", "deabc")


/// If you write a string twice, it must encapsulate all possible rotations, e.g. “catcat” contains “cat”, “tca”, and “atc”.
/// . So if your string was “abc” then you would double it to “abcabc”, which contains all possible rotations: “abc”, “cab”, and “bca”.
func isRotated_Alternative(_ text1: String, _ text2: String) -> Bool {
    let combined = text1 + text1
    var versions = [String]()
    for i in 0..<text1.count {
        let startIndex = String.Index(utf16Offset: i, in: combined)
        let endIndex = String.Index(utf16Offset: i + text1.count, in: combined)
        let substring = combined[startIndex..<endIndex]
        versions.append(String(substring))
    }
    
    return versions.contains(text2)
}

isRotated_Alternative("abcde", "deabc")


/// Array slices
func isRotated_Alternative2(_ text1: String, _ text2: String) -> Bool {
    let combinedArray = Array(text1 + text1).map{ String($0) }
    var versions = [String]()
    for i in 0..<text1.count {
        let str = Array(combinedArray)[i..<text1.count + i].joined()
        versions.append(str)
    }
    
    return versions.contains(text2)
}

isRotated_Alternative2("abcde", "deabc")

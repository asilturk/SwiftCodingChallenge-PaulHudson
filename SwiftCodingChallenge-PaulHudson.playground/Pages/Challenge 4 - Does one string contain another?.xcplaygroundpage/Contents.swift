
/**
 
 Write your own version of the contains() method on String that ignores letter case, and
 without using the existing contains() method.
 Sample input and output
 • The code "Hello, world".fuzzyContains("Hello") should return true.
 • The code "Hello, world".fuzzyContains("WORLD") should return true.
 • The code "Hello, world".fuzzyContains("Goodbye") should return
 false.

 */

extension String {
    func fuzzyContains(_ text: String) -> Bool {
        var textIndex = 0
        var textCount = text.count
        
        for char in self {
            if textCount == 0 { return true }
            if char == Array(text)[textIndex] {
                textCount -= 1
                textIndex += 1
            } else {
                textIndex = 0
                textCount = text.count
            }
        }
        
        return false
    }
}


"Hello, world".fuzzyContains("Hello")

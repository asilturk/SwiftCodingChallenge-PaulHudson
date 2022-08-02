
/**
 
 Write a function that accepts a String as its only parameter, and returns true if the string
 reads the same when reversed, ignoring case.
 Sample input and output
 • The string “rotator” should return true.
 • The string “Rats live on no evil star” should return true.
 • The string “Never odd or even” should return false; even though the letters are the
 same in reverse the spaces are in different places.
 • The string “Hello, world” should return false because it reads “dlrow ,olleH”
 backwards.
 
 */

func isPalindrome(_ text: String) -> Bool {
    let ignored = text.lowercased()
    return ignored == String(ignored.reversed())
}

isPalindrome("rotator")
isPalindrome("Never odd or even")

/**
 
 Once you figure that out, you’ll just need to use reversed() to reverse the string’s characters, then compare the reversed array with the character view-as-array, like this:
 Remember, strings are value types in Swift, which means they compare as equal as long as their contents are identical - it doesn’t matter how they are created. As an analogy, we all know that 2 times 2 is equal to 2 + 2, even though the number 4 was created using different methods. The same is true of Swift’s string: even though one is reversed, the == operator just compares the current value.
 Finally, make sure you remember that your comparison should ignore string case. This can be done with the lowercased() method on the input string, like this:

 */
func isPalindrome_Alternative(_ text: String) -> Bool {
    let ignored = text.lowercased()
    return ignored.reversed() == Array(ignored)
}

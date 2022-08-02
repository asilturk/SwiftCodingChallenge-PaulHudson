/**
 
 Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.
 Sample input and output
 • The strings “abca” and “abca” should return true.
 • The strings “abc” and “cba” should return true.
 • The strings “ a1 b2 ” and “b1 a2” should return true.
 • The strings “abc” and “abca” should return false.
 • The strings “abc” and “Abc” should return false.
 • The strings “abc” and “cbAa” should return false.

 */


func isTwoStringShareCharacter(_ text1: String, _ text2: String) -> Bool {
    let set1 = Set(text1)
    let set2 = Set(text2)

    return set1.allSatisfy { set1.contains($0) }
}

isTwoStringShareCharacter("abca", "abc")


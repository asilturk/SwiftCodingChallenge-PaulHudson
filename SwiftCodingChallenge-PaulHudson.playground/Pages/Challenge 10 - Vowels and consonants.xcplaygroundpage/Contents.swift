/**
 
 Given a string in English, return a tuple containing the number of vowels and consonants.
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters
 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.

 
 */

let vowels: Set<Character> = Set(["a", "e", "i", "o", "u"])
let consonants: Set<Character> = Set(["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"])

func get(_ text: String) -> (vowels: Int, consonants: Int) {
    let vowelCount = text.lowercased().filter { vowels.contains($0) }.count
    let consonantCount = text.lowercased().filter { consonants.contains($0) }.count
    return (vowelCount, consonantCount)
}

get("Mississippi")

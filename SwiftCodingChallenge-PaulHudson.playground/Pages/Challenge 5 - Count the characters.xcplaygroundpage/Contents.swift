
/**
 
 Write a function that accepts a string, and returns how many times a specific character appears,
 taking case into account.
 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.

 
 */

func charCount(_ text: String, char: Character) -> Int {
    var count = 0
    for character in text where char == character {
        count += 1
    }
    
    return count
}


charCount("The rain in Spain", char: "a")


func charCount_Alternative(_ text: String, char: Character) -> Int {
    text.reduce(0) { $1 == char ? $0 + 1 : $0 }
}

func charCount_Alternative2(_ text: String, char: Character) -> Int {
    text.filter { $0 == char }.count
}


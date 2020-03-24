//https://www.hackerrank.com/challenges/pangrams/problem
func pangrams(s: String) -> String {
    var alphabet: [Character:Bool] = [:]
    
    for character in s.lowercased() {
        if let _ = alphabet[character] {
        } else {
            if character != " " {
                alphabet[character] = true
            }
        }

        if alphabet.count == 26 {
            return "pangram"
        }
    }
    return "not pangram"
}

//https://www.hackerrank.com/challenges/the-love-letter-mystery/problem
func theLoveLetterMystery(s: String) -> Int {
    let letters = s.map { $0 }
    let mid = letters.count / 2
    var numbers = 0
    for i in 0..<mid {
        guard let letterAtFront = UnicodeScalar(String(letters[i]))?.value,
        let letterAtEnd = UnicodeScalar(String(letters[letters.count-1-i]))?.value else { return 0 }
        numbers += abs(Int(letterAtFront) - Int(letterAtEnd))
    }
    return numbers
}

//https://www.hackerrank.com/challenges/alternating-characters/problem
func alternatingCharacters(s: String) -> Int {
    let sArray = Array(s)
    var count = 0
    var preCharacter = sArray[0]
    for i in 1..<sArray.count {
        if sArray[i] == preCharacter {
            count += 1
        } else {
            preCharacter = sArray[i]
        }
    }
    return count
}

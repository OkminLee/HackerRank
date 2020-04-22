https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem
func hackerrankInString(s: String) -> String {
    let hackerrank = "hackerrank"
    var string = s
    var indices:[Int] = []
    var count = 0
    
    for character in hackerrank {
        if let index = string.firstIndex(of: character) {
            let encodedIndex = index.encodedOffset
            print(encodedIndex, character)
            indices.append(encodedIndex + count)
            string.removeFirst(encodedIndex+1)
            count += encodedIndex
        }
    }

    if indices.count == hackerrank.count, indices == indices.sorted() {
        return "YES"
    } else {
        return "NO"
    }
}

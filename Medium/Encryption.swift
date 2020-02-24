//https://www.hackerrank.com/challenges/encryption/problem

func encryption(s: String) -> String {
    var rows = Int(sqrt(Double(s.count)))
    let cols = rows*rows == s.count ? rows : rows + 1
    var result = ""

    if rows * cols < s.count {
        rows += 1
    }
    for i in 0..<cols {
        for j in 0..<rows {
            if i + j*cols < s.count {
                result.append(s[i + j*cols])
            }
            
        }
        result += " "
    }
    return result
}

extension String {
    subscript (characterIndex: Int) -> Character {
        return self[index(startIndex, offsetBy: characterIndex)]
    }
}

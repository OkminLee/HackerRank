//https://www.hackerrank.com/challenges/reduced-string/problem

func superReducedString(s: String) -> String {
    var reducedString = s

    while true {
        let reduce = reduceString(s: reducedString)
        if reducedString == reduce {
            break
        } else {
            reducedString = reduce
        }
    }
    
    if reducedString.isEmpty {
        reducedString = "Empty String"
    }
    return reducedString
}

func reduceString(s: String) -> String {
    var reducedString = ""
    var preCharacter: Character?
    for character in s {
        if let pre = preCharacter {
            if character == pre {
                preCharacter = nil
            } else {
                reducedString.append(pre)
                preCharacter = character
            }
        } else {
            preCharacter = character
        }
    }
    if let pre = preCharacter {
        reducedString.append(pre)
    }
    
    return reducedString
}

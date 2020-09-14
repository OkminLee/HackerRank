//https://www.hackerrank.com/challenges/the-time-in-words/problem
func intToString(number: Int) -> String {
    let result: String
    switch number {
    case 1:
        result = "one"
    case 2:
        result = "two"
    case 3:
        result = "three"
    case 4:
        result = "four"
    case 5:
        result = "five"
    case 6:
        result = "six"
    case 7:
        result = "seven"
    case 8:
        result = "eight"
    case 9:
        result = "nine"
    case 10:
        result = "ten"
    case 11:
        result = "eleven"
    case 12:
        result = "twelve"
    case 13..<15, 16..<20:
        let onesDecimal = number % 10
        let postfix = "teen"
        let prefix: String
        switch onesDecimal {
        case 3:
            prefix = "thir"
        case 4:
            prefix = "four"
        case 5:
            prefix = "fif"
        case 6:
            prefix = "six"
        case 7:
            prefix = "seven"
        case 8:
            prefix = "eight"
        case 9:
            prefix = "nine"
        default:
            prefix = ""
        }
        result = prefix + postfix
    case 15, 45:
        result = "quarter"
    case 20..<30:
        let prefix = "twenty"
        let postfix = intToString(number: number % 10)
        
        result = prefix + (postfix.isEmpty ? "" : " \(postfix)")
    case 30:
        result = "half"
    case 31..<45, 46..<60:
        result = intToString(number: 60 - number)
    default:
        result = ""
    }
    return result
}

func timeInWords(h: Int, m: Int) -> String {
    let result: String
    
    let hString = intToString(number: h)
    let mString = intToString(number: m)
    switch m {
    case 0:
        result = hString + " o' clock"
    case 1:
        result = "\(mString) minute past \(hString)"
    case 2..<15, 16..<30:
        result = "\(mString) minutes past \(hString)"
    case 15:
        result = "\(mString) past \(hString)"
    case 30:
        result = "half past \(hString)"
    case 31..<45, 46..<60:
        result = "\(mString) minutes to \(intToString(number: h+1))"
    case 45:
        result = "\(mString) to \(intToString(number: h+1))"
    default:
        result = ""
    }
    
    return result
}

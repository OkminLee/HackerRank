//https://www.hackerrank.com/challenges/kaprekar-numbers/problem

func kaprekarNumbers(p: Int, q: Int) -> Void {
    var kaprekarNumbers: [Int] = []
    
    for number in p...q {
        let square = number * number
        let digit = String(square).count
        var exponent = 0
        if digit % 2 == 0 {
            exponent = digit / 2
        } else {
            exponent = (digit+1) / 2
        }
        let tens = NSDecimalNumber(decimal: pow(10, exponent)).intValue
        let upperNumber = square / tens
        let lowerNumber = square % tens
        if upperNumber + lowerNumber == number {
            print("\(number) ", terminator: "")
            kaprekarNumbers.append(number)
        }
    }
    
    if kaprekarNumbers.count == 0 {
        print("INVALID RANGE")
    }
}

//https://www.hackerrank.com/challenges/find-digits/problem

func findDigits(n: Int) -> Int {
    var digits: [Int] = []
    var originNumber = n
    var counter = 0
    
    while originNumber != 0 {
        digits.append(originNumber % 10)
        originNumber /= 10
    }
    
    for digit in digits {
        if digit != 0, n % digit == 0 {
            counter += 1
        }
    }
    
    return counter
}

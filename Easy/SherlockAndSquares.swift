//https://www.hackerrank.com/challenges/sherlock-and-squares/problem

func squares(a: Int, b: Int) -> Int {
    var squareCounter = 0
    var number = a
    
    while number <= b {
        let squareRootNumber = sqrt(Double(number))
        if Double(number).truncatingRemainder(dividingBy: squareRootNumber) == 0 {
            squareCounter += 1
            number = (Int(squareRootNumber) + 1) * (Int(squareRootNumber) + 1)
        } else {
            number += 1
        }
    }
    
    return squareCounter
}

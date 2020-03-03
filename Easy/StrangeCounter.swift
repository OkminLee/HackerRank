//https://www.hackerrank.com/challenges/strange-code/problem

func strangeCounter(t: Int) -> Int {
    var initialNumber = 4
    var multiplier = 6
    while true {
        let result = -t + initialNumber
        if result > 0 {
            return result
        } else {
            initialNumber += multiplier
            multiplier = multiplier * 2
        }
    }
}

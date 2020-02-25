//https://www.hackerrank.com/challenges/chocolate-feast/problem

func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
    var sum = n / c
    var wrappers = sum

    while wrappers >= m {
        let barNumberCouldReceive = wrappers / m
        sum += barNumberCouldReceive
        wrappers = wrappers + barNumberCouldReceive - barNumberCouldReceive * m
    }
    return sum
}

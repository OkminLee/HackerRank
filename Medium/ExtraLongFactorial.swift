//Problem : https://www.hackerrank.com/challenges/extra-long-factorials/problem
//Reference : https://stackoverflow.com/questions/43830151/in-swift-3-how-to-calculate-the-factorial-when-the-result-becomes-too-high

func extraLongFactorials(n: Int) -> Void {
    if n == 1 {
        print("1")
        return
    }
    var result = [1]
    for i in 2...n {
        result = result.map { $0 * i }
        result = carryAll(result)
    }

    print(result.map(String.init).joined())
}

func carryAll(_ arr: [Int]) -> [Int] {
    var result = [Int]()

    var carry = 0
    for val in arr.reversed() {
        let total = val + carry
        let digit = total % 10
        carry = total / 10
        result.append(digit)
    }

    while carry > 0 {
        let digit = carry % 10
        carry = carry / 10
        result.append(digit)
    }

    return result.reversed()
}

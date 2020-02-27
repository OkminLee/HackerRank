//https://www.hackerrank.com/challenges/lisa-workbook/problem

func workbook(n: Int, k: Int, arr: [Int]) -> Int {
    var page = 1
    var specialProblems = 0
    
    for problem in arr {
        for number in 1...problem {
            if number == page {
                specialProblems += 1
            }
            
            if number % k == 0 {
                page += 1
            }
        }
        if problem % k != 0 {
            page += 1
        }
    }
    return specialProblems
}

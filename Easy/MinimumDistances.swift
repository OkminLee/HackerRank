//https://www.hackerrank.com/challenges/minimum-distances/problem

func minimumDistances(a: [Int]) -> Int {
    var min = 100000
    
    for index in 0..<a.count {
        let distance = a.lastIndex(of: a[index])! - index
        if distance != 0, distance < min {
            min = distance
        }
    }
    if min == 100000 {
        min = -1
    }
    return min
}

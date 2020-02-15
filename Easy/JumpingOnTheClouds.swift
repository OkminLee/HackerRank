//https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem

func jumpingOnClouds(c: [Int], k: Int) -> Int {
    let n = c.count
    var index = 0
    var level = 100
    level -= (1 + c[0]*2)
    index = (index+k) % n
    
    while index != 0 {
        level -= (1 + c[index]*2)
        index = (index+k) % n
    }
    
    return level
}

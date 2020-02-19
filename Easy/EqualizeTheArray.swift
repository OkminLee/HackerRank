//https://www.hackerrank.com/challenges/equality-in-a-array/problem

func equalizeArray(arr: [Int]) -> Int {
    let maxIndex = 101
    var max = 0
    var counts: [Int] = Array(repeating: 0, count: maxIndex)
    
    for number in arr {
        counts[number] += 1
        if counts[number] > max {
            max = counts[number]
        }
    }
    return arr.count - max
}

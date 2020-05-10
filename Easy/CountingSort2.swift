//https://www.hackerrank.com/challenges/countingsort2/problem
func countingSort(arr: [Int]) -> [Int] {
    var counts = Array(repeating: 0, count: 100)
    var results:[Int] = []
    
    for number in arr {
        counts[number] += 1
    }
    
    for (index, number) in counts.enumerated() {
        if number != 0 {
            for _ in 0..<number {
                results.append(index)
            }
            
        }
    }
    
    return results
}

//https://www.hackerrank.com/challenges/countingsort1/problem
func countingSort(arr: [Int]) -> [Int] {
    var results = Array(repeating: 0, count: 100)
    
    for number in arr {
        results[number] += 1
    }
    
    return results
}

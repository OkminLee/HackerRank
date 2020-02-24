//https://www.hackerrank.com/challenges/beautiful-triplets/problem

func beautifulTriplets(d: Int, arr: [Int]) -> Int {
    var counter = 0
    
    for number in arr.reversed() {
        let candidate = arr.filter { number - $0 == d }
        if let existCandidate = candidate.first {
            let candidate2 = arr.filter { existCandidate - $0 == d }
            if let _ = candidate2.first {
                counter += 1
            }
        }
    }
    
    return counter
}

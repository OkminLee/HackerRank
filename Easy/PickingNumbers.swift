//https://www.hackerrank.com/challenges/picking-numbers/problem

var max = 0

func pickingNumbers(a: [Int]) -> Int {
    for number in a {
        let candidate = a.filter { abs(number - $0) <= 1 }
        if couldBeMax(for: candidate) {
            max = candidate.count
        } else {
            let maxCandidate = candidate.max()!
            let minCandidate = candidate.min()!
            let maxRemovedCandidate = candidate.filter { $0 != maxCandidate }
            let minRemovedCandidate = candidate.filter { $0 != minCandidate }
            if maxRemovedCandidate.count < minRemovedCandidate.count {
                if couldBeMax(for: minRemovedCandidate) {
                    max = minRemovedCandidate.count
                }
            } else {
                if couldBeMax(for: maxRemovedCandidate) {
                    max = maxRemovedCandidate.count
                }
            }
        }
    }
    return max
}

func couldBeMax(for array: [Int]) -> Bool {
    if let maxCandidate = array.max(), let minCandidate = array.min() {
        if abs(maxCandidate-minCandidate) <= 1, array.count > max {
            return true
        } else {
            return false
        }
    } else {
        return false
    }
}

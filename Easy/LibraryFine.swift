//https://www.hackerrank.com/challenges/library-fine/problem

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    let finePerDay = 15
    let finePerMonth = 500
    let fineForYear = 10000
    
    guard y1 <= y2 else { return fineForYear }
    if y1 < y2 {
        return 0
    }
    guard m1 <= m2 else { return finePerMonth * abs(m1-m2) }
    if m1 < m2 {
        return 0
    }
    
    if d1 <= d2 {
        return 0
    } else {
        return finePerDay * abs(d1-d2)
    }
}

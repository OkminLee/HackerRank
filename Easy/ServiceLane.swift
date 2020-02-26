//https://www.hackerrank.com/challenges/service-lane/problem
// I think origin method serviceLane(n: Int, cases: [[Int]]) can not solve the problem.
// It should has more parameter for the width. So, I modified that method.

func serviceLane(n: Int, width: [Int], cases: [[Int]]) -> [Int] {
    var results: [Int] = []
    for c in cases {
        results.append(Array(width[c[0]...c[1]]).min()!)
    }
    return results
}

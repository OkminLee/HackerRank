func permutationEquation(p: [Int]) -> [Int] {
    let x = p.sorted()
    let mapped = x.map { p.firstIndex(of: $0)! + 1 }
    let result = mapped.map { p.firstIndex(of: $0)! + 1}
    return result
}

//https://www.hackerrank.com/challenges/halloween-sale/problem

func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
    guard s >= d else { return 0 }
    var sum = 0
    var counter = 0
    while true {
        let price = p - d*counter > m ? p - d*counter : m
        sum += price
        if sum > s {
            break
        }
        counter += 1
    }
    
    return counter
}

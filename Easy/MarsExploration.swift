//https://www.hackerrank.com/challenges/mars-exploration/problem

func marsExploration(s: String) -> Int {
    var counter = 0
    let three = 3
    for (index, character) in s.enumerated() {
        
        if index % three == 0 || index % three == 2 {
            if character != "S" {
                counter += 1
            }
        } else {
            if character != "O" {
                counter += 1
            }
        }
    }
    
    return counter
}

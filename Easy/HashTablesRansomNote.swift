//https://www.hackerrank.com/challenges/ctci-ransom-note/problem

func checkMagazine(magazine: [String], note: [String]) -> Void {
    var magazineDictionary = Dictionary<String, Int>()
    for i in 0..<magazine.count {
        if let exist = magazineDictionary[magazine[i]] {
            magazineDictionary.updateValue(exist+1, forKey: magazine[i])
        } else {
            magazineDictionary.updateValue(1, forKey: magazine[i])
        }
    }

    for i in 0..<note.count {
        if let exist = magazineDictionary[note[i]], exist > 0 {
            magazineDictionary.updateValue(exist-1, forKey: note[i])
        } else {
            print("No")
            return
        }
    }
    print("Yes")
}

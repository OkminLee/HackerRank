func appendAndDelete(s: String, t: String, k: Int) -> String {
    var sArray = Array(s)
    var tArray = Array(t)
    let minCount = min(s.count, t.count)
    let maxCount = max(s.count, t.count)
    var k = k
    for i in 0..<maxCount {
        if i == minCount || sArray[i] != tArray[i] {
            print(i)
            if s.count < t.count {
                k = k - i*2
            }
            sArray.removeFirst(i)
            tArray.removeFirst(i)
            break
        }
    }
    if sArray == tArray {
        sArray.removeAll()
    }
    print(sArray, tArray)
    
    let condition = sArray.count + tArray.count <= k || (s == t && k % 2 == 0) || (Set(s) == Set(t) && k % 2 == 0)
    if condition {
        return "Yes"
    } else {
        return "No"
    }
}

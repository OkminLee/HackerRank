//https://www.hackerrank.com/challenges/taum-and-bday/problem

func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
    if bc > wc + z {
        return b * (wc + z) + w * wc
    } else if wc > bc + z {
        return b * bc + w * (bc + z)
    } else {
        return b * bc + w * wc
    }
}

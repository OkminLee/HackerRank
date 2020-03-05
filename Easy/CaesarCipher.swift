//https://www.hackerrank.com/challenges/caesar-cipher-1/problem

func caesarCipher(s: String, k: Int) -> String {
    var result = ""
    
    for character in s {
        if let asciiValue = character.asciiValue {
            let cipherAsciiValue = asciiValue+UInt8(k%26)
            let cipherCharacter: Character
            if character.isUppercase {
                cipherCharacter = Character(Unicode.Scalar(cipherAsciiValue%91<65 ? cipherAsciiValue%91+65 : cipherAsciiValue%91))
                result.append(cipherCharacter)
            } else if character.isLowercase {
                cipherCharacter = Character(Unicode.Scalar(cipherAsciiValue%123<97 ? cipherAsciiValue%123+97 : cipherAsciiValue%123))
                result.append(cipherCharacter)
            } else {
                result.append(character)
            }
        }
    }
    return result
}

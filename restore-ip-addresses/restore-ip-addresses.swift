class Solution {
    var possibleDotPositions: [[Int]] = []
    
    func chooseDotPosition(current: Int, picked: [Int], limit maxIndex: Int) {
        if picked.count == 3 {
            possibleDotPositions.append(picked)
            return
        }
        
        if current >= maxIndex {
            return
        }
        
        chooseDotPosition(current: current + 1, picked: picked + [current], limit: maxIndex)
        chooseDotPosition(current: current + 1, picked: picked, limit: maxIndex)
    }
    
    func convertToIPAddress(_ characters: [Character], _ dotPositions: [Int]) -> String {
        var converted: String = ""
        
        var index: Int = 0
        for character in characters {
            converted += "\(character)"
            
            if index == dotPositions[0] || index == dotPositions[1] || index == dotPositions[2] {
                converted += "."
            }
            
            index += 1
        }
        
        return converted
    }
    
    func validIPAddress(_ ip: String) -> Bool {
        let separated: [String] = ip.split(separator: ".").map { String($0) }
        
        for subString in separated {
            if subString.count == 1 {
                continue
            }
            
            if let number: Int = Int(subString) {
                if number > 255 {
                    return false
                }
            }
            
            if let firstCharater: Character = subString.first {
                guard firstCharater != "0" else {
                    return false
                }
                continue
            }
        }
        
        return true
    }
    
    func restoreIpAddresses(_ s: String) -> [String] {
        let characters: [Character] = Array(s)
        var answers: [String] = []
        
        chooseDotPosition(current: 0, picked: [], limit: characters.count - 1)
        
        for dotPosition in possibleDotPositions {
            let converted: String = convertToIPAddress(characters, dotPosition)
            
            if validIPAddress(converted) {
                answers.append(converted)
            }
        }
        
        return answers
    }
}
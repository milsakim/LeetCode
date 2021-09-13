class Solution {
    func countBits(_ n: Int) -> [Int] {
        var answer: [Int] = []
        
        for num in 0...n {
            let converted: String = String(num, radix: 2)
            
            var numberOfOne = 0
            
            // String의 각 element 확인
            /*
            for idx in 0..<converted.count {
                if converted[idx] == '1' { 
                    numberOfOne += 1
                }
            }
            */
            
            converted.forEach { letter in
                if letter == "1" {
                    numberOfOne += 1
                }
            }
            
            answer.append(numberOfOne)
        }
        
        return answer
    }
}
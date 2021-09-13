class Solution {
    func countBits(_ n: Int) -> [Int] {
        // n == 1
        if n == 0 {
            return [0]
        }
        
        // n >= 1
        var answer: [Int] = [0, 1] // Pre-calculate when i is 0 and 1
        
        var i = 2
        while i <= n {
            let quotient: Int = i / 2 // The quotient of dividing i by 2
            let remainder: Int = i % 2 // The remainder of dividing i by 2
            answer.append(answer[quotient] + remainder)
            i += 1
        }
        
        return answer
    }
}
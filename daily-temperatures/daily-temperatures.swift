class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answer: [Int] = Array(repeating: 0, count: temperatures.count)
        
        for i in 0..<(temperatures.count - 1) {
            var daysToWait: Int = 0
            var exist: Bool = false
            
            for future in (i + 1)..<temperatures.count {
                daysToWait += 1
                
                if temperatures[i] < temperatures[future] {
                    exist = true
                    break
                }
            }
            
            if exist {
                answer[i] = daysToWait
            }
        }
        
        return answer
    }
}
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var count: [Int: Int] = [:]
        var answer: Int = -1
        
        for num in nums {
            if count[num] == nil {
                count[num] = 1
            }
            else {
                count[num] = 2
            }
        }
        
        count.forEach { (key, value) in
            if value == 1 {
                answer = key
            }
        }
        
        return answer
    }
}
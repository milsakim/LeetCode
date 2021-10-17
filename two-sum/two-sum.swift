class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answer: [Int] = []
        
        for index in (0..<nums.count).reversed() {
            if let pairIndex: Int = nums.firstIndex(of: target - nums[index]) {
                answer.append(index)
                answer.append(pairIndex)
                break
            }
        }
        
        return answer
    }
}
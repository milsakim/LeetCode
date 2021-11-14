class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 1 else { return nums[0] }
        
        var numberOfAppearance: [Int: Int] = [:]
        
        for num in nums {
            if numberOfAppearance[num] == nil {
                numberOfAppearance[num] = 0
            }
            
            numberOfAppearance[num]! += 1
        }
        
        let sorted: [(Int, Int)] = numberOfAppearance.sorted { $0.value > $1.value }
        
        return sorted[0].0
    }
}
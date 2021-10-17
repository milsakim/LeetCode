class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        for index in 0..<(nums.count - 1) {
            var leftNums: [Int] = nums
            leftNums.remove(at: index)
            
            if leftNums.contains(nums[index]) {
                return true
            }
        }
        
        return false
    }
}
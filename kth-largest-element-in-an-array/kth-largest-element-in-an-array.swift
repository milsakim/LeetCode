class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        guard nums.count > 1 else { return nums[0] }
        
        let sortedNums: [Int] = nums.sorted { $0 > $1 }
        
        return sortedNums[k - 1]
    }
}


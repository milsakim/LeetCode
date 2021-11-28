class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var exists: [Int: Bool] = [:]
        
        for num in nums {
            if exists[num] != nil {
                return num
            }
            else {
                exists[num] = true
            }
        }
        
        return 0
    }
}
class Solution {
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        
        for i in 0..<nums.count {
            for j in 0..<result.count {
                var temp: [Int] = result[j]
                temp.append(nums[i])
                result.append(temp)
            }
            result.append([nums[i]])
        }
        
        result.append([])
        
        return result
    }
    
}
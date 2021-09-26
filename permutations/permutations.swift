class Solution {
    var nums: [Int] = []
    var used: [Bool] = []
    var permutations: [[Int]] = []
    
    func makePermutation(_ picked: [Int], _ limit: Int) {
        if picked.count == limit {
            permutations.append(picked)
            return
        } 
        
        var p = picked
        for idx in 0..<nums.count where !used[idx] {
            p.append(nums[idx])
            used[idx] = true
            makePermutation(p, limit)
            p.removeLast()
            used[idx] = false
        }
    }
    
    func permute(_ nums: [Int]) -> [[Int]] {
        self.nums = nums
        used = Array(repeating: false, count: nums.count)
        makePermutation(Array<Int>(), nums.count)
        return permutations
    }
}
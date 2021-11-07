class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var combination: [Int] = [], uniques: [[Int]] = []
        dfs(candidates.sorted(), target, 0, &uniques, &combination)
        return uniques
    }
    
    func dfs(_ candidates: [Int], _ target: Int, _ index: Int, _ uniques: inout [[Int]], _ combination: inout [Int]) {
        guard target > 0 else {
            uniques.append(combination)
            return
        }
        
        for i in index..<candidates.count where candidates[i] <= target {
            combination.append(candidates[i])
            dfs(candidates, target - candidates[i], i, &uniques, &combination)
            combination.removeLast()
        }
    }
}
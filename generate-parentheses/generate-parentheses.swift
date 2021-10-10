class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result: [String] = []
        backTracking(&result, "", 0, 0, n)
        return result
    }
    
    func backTracking(_ result: inout [String], _ current: String, _ left: Int, _ right: Int, _ max: Int) {
        if current.count == (max * 2) {
            result.append(current)
            return
        }
        
        if (left < max) {
            backTracking(&result, current + "(", left + 1, right, max)
        }
        if (right < left) {
            backTracking(&result, current + ")", left, right + 1, max)
        }
    }
}
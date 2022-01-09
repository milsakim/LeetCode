class Solution {
    func trap(_ height: [Int]) -> Int {
        
        var stack: [Int] = [], result = 0
        
        for i in height.indices {
            let hidx = height[i]
            
            while !(stack.isEmpty), let last = stack.last, hidx > height[last] {
                let top = stack.removeLast()
                if !(stack.isEmpty), let last = stack.last {
                    let diff = min(hidx, height[last]) - height[top]
                    result += (i - last - 1) * diff
                } else { break }
            }
            stack.append(i)
        }
        
        return result
    }
}
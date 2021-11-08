class Solution {
   func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var memo = [String:Int]()
        return uniquePathHelper((m, n), (0,0), &memo)
    }
    
    func uniquePathHelper(_ destinationCoord: (Int, Int), _ currentCoord: (Int, Int), _ memo: inout [String:Int]) -> Int {
        if let value = memo["\(currentCoord.0)-\(currentCoord.1)"] {
            return value
        }
        if currentCoord == (destinationCoord.0 - 1, destinationCoord.1 - 1) {
            return 1
        }
        if currentCoord.0 >= destinationCoord.0 || currentCoord.1 >= destinationCoord.1 {
            return 0
        }
        
        let right = uniquePathHelper(destinationCoord, (currentCoord.0 + 1, currentCoord.1), &memo)
        let down = uniquePathHelper(destinationCoord, (currentCoord.0, currentCoord.1 + 1), &memo)
        memo["\(currentCoord.0)-\(currentCoord.1)"] = right + down
        return right + down
    }
}
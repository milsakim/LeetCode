class Solution {
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var counts: [Int: Int] = [:]
        
        for num in nums {
            if counts[num] == nil {
                counts[num] = 1
            }
            else {
                counts[num]! += 1
            }
        }
        
        let sorted: [(key: Int, value: Int)] = counts.sorted { $0.value > $1.value }

        return sorted[0..<k].map{ $0.key }
    }
    
}
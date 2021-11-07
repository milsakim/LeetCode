class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        guard strs.count > 0 else { return [] }
        
        var dict: [String: [String]] = [:]
        
        for str in strs {
            let sortedString: String = String(str.sorted())
            dict[sortedString, default: []].append(str)
        }
        
        return Array(dict.values)
    }
}
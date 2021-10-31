/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return helper(0,nums.count - 1, nums)
    }
    
    func helper(_ start:Int, _ end:Int, _ input:[Int]) ->TreeNode? {
        if(start > end) {
            return nil
        }
        
        let mid = (start + end)/2
        var root = TreeNode(input[mid])
        root.left = helper(start,mid - 1, input)
        root.right = helper(mid + 1,end, input)
        
        return root

    }
}
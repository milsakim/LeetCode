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
    func rob(_ root: TreeNode?) -> Int {
    func dfs(_ node: TreeNode?) -> (now: Int, last: Int) {
        guard let node = node else {return (0,0)}
        let (lnow, llast) = dfs(node.left)
        let (rnow, rlast) = dfs(node.right)
        return (max(lnow + rnow, llast + rlast + node.val), lnow + rnow )
    }
    return dfs(root).now
}
}
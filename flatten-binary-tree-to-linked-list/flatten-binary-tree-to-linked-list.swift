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
func flatten(_ root: TreeNode?) {
        var tail: TreeNode? 
        var stack = [root]
        while let top = stack.popLast() {
            guard let node = top else { continue }
            tail?.right = node      
            stack.append(node.right)
            stack.append(node.left)  
            tail = node              
            node.left = nil      
        }
    }
}
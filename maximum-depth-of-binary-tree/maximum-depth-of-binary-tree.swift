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
    var maxDepth: Int = 1
   
    func calculateMaxDepth(_ node: TreeNode, _ depth: Int) {
        print("visit \(node.val) : \(depth)")
        if node.left == nil, node.right == nil {
            if depth > maxDepth {
                maxDepth = depth
            }
            
            return
        }
        
        if node.left != nil {
            calculateMaxDepth(node.left!, depth + 1)
        }
        if node.right != nil {
            calculateMaxDepth(node.right!, depth + 1)
        }
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        if let left = root!.left {
            calculateMaxDepth(left, 2)
        }
        if let right = root!.right {
            calculateMaxDepth(right, 2)
        }
        
        return maxDepth;
    }
}
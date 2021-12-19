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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
       guard preorder.count == inorder.count, preorder.count >= 1, preorder.count <= 3000 else {
            return nil
        }
        guard let rootValue = preorder.first, let rootIndex = inorder.firstIndex(of: rootValue)  else {
            return nil
        }                
        
        let rootNodeVal = inorder[rootIndex]        
        let rootNode = TreeNode(rootNodeVal)
        
        if rootIndex >= 1 { 
            rootNode.left = buildTree(Array(preorder[1...rootIndex]), Array(inorder[0..<rootIndex]))
        }
        
        if (rootIndex + 1) < inorder.count, (rootIndex + 1) < preorder.count {       
            rootNode.right = buildTree(Array(preorder[rootIndex+1..<preorder.count]), Array(inorder[rootIndex+1..<inorder.count]))
        }
                
        return rootNode        
    }
    
}
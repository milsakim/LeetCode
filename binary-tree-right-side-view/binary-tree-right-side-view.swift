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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root: TreeNode = root else {
            return []
        }
        
        var array: [Int] = [root.val]
        var queue: [TreeNode] = [root]
        
        var level: Int = 1
        
        while !queue.isEmpty {
            let sizeOfLevel: Int = queue.count
            print("level: \(level)")
            level += 1
            
            for _ in 0..<sizeOfLevel {
                let current: TreeNode = queue.removeFirst()
                print("current: \(current.val)")
                
                // If current node has left child
                if let leftNode: TreeNode = current.left {
                    queue.append(leftNode)
                }
                
                // If current node has right child
                if let rightNode: TreeNode = current.right {
                    queue.append(rightNode)
                }
            }
            
            if let rightMostNode: TreeNode = queue.last {
                print("rightMostNode: \(rightMostNode.val)")
                array.append(rightMostNode.val)
            }
        }
        
        return array
    }
}
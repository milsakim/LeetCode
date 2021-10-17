/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }
        
        guard head?.next != nil else {
            return head
        }
        
        var node: ListNode? = head
        var previousNode: ListNode?
        
        while node != nil {
            let nextNode: ListNode? = node?.next
            node?.next = previousNode
            
            previousNode = node
            node = nextNode
        }
        
        return previousNode
    }
}
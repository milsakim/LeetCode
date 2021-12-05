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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let list1 = list1 else { return list2 }
        guard let list2 = list2 else { return list1 }

        var head: ListNode?
        var pointer: ListNode?
        var node1: ListNode? = list1
        var node2: ListNode? = list2
        
        while node1 != nil && node2 != nil {
            if node1!.val <= node2!.val {
                if head == nil {
                    head = node1
                    pointer = head
                }
                else {
                    pointer!.next = node1
                    pointer = pointer!.next
                }
                
                node1 = node1!.next
            }
            else {
                if head == nil {
                    head = node2
                    pointer = head
                }
                else {
                    pointer!.next = node2
                    pointer = pointer!.next
                }
                
                node2 = node2!.next
            }
        }
        
        if node1 != nil {
            if head == nil {
                head = node1
            }
            else {
                pointer!.next = node1
            }
        }
        
        if node2 != nil {
            if head == nil {
                head = node2
            }
            else {
                pointer!.next = node2
            }
        }
        
        return head
    }
}
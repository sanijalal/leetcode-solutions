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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let listOne = l1 else {
            if let listTwo = l2 {
                return listTwo
            }
            return nil
        }
        
        guard let listTwo = l2 else {
            return l1
        }
        
        var nextNodeAvailable = true
        var node = ListNode(0)
        var currentNode = node
        var currentLeftNode: ListNode? = listOne
        var currentRightNode: ListNode? = listTwo
        
        while nextNodeAvailable == true {
            if let leftNode = currentLeftNode {
                currentNode.val += leftNode.val
                currentLeftNode = leftNode.next
            }
            
            if let rightNode = currentRightNode {
                currentNode.val += rightNode.val
                currentRightNode = rightNode.next
            }
            
            if currentLeftNode == nil && currentRightNode == nil {
                nextNodeAvailable = false
            }
            
            var nextNode: ListNode? = nil
            
            
            if currentNode.val >= 10 {
                currentNode.val = currentNode.val - 10
                var nextNode = ListNode(1)
                currentNode.next = nextNode
                currentNode = nextNode
            } else {
                if nextNodeAvailable {
                    var nextNode = ListNode(0)
                    currentNode.next = nextNode
                    currentNode = nextNode
                } 
            }
        }
        
        return node
    }
}
import Foundation

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
        var resultVal = 0
        var firstNode: ListNode?
        var resultNode: ListNode?
        var l1 = l1
        var l2 = l2

        while l1?.val != nil || l2?.val != nil {
            resultVal += l1?.val ?? 0
            resultVal += l2?.val ?? 0

            let val = resultVal % 10
            resultVal /= 10

            if firstNode == nil {
                firstNode = .init(val)
                resultNode = firstNode
            } else {
                resultNode?.next = .init(val)
                resultNode = resultNode?.next
            }

            l1 = l1?.next
            l2 = l2?.next
        }

        if resultVal > 0 {
            resultNode?.next = .init(resultVal)
        }

        return firstNode
    }
}

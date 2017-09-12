//83. Remove Duplicates from Sorted List
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
//去除链表中冲重复的元素
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        var currentNode = head
        while let nextNode = currentNode?.next {
            if nextNode.val == currentNode?.val{
                //相等把next删除
                currentNode?.next = nextNode.next
            }else{
                currentNode = nextNode
            }
            
            
        }
        
        return head
    }
}

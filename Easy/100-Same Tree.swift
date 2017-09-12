
//100.Same Tree
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil{
            return true
        }
        if p?.val != q?.val{
            return false
        }
        
        
        return self.isSameTree(p?.left, q?.left) && self.isSameTree(p?.right, q?.right)
        
    }
}

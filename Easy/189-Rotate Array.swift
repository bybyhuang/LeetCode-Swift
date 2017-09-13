//189-Rotate Array
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {

        
        for _ in (nums.count-k..<nums.count).reversed(){
            
            nums.insert(nums.last!, at: 0)
            nums.remove(at: nums.count-1)
        }
        
    }
}

var array = [1,2,3,4,5,6,7,8]
Solution().rotate(&array, 3)
print(array)

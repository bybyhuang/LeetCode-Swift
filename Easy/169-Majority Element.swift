//169. Majority Element
class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int:Int]()
        
        for value in nums {
            let count = dict[value]
            if let isCount = count{
                dict[value] = isCount + 1
                
                if dict[value]! > nums.count / 2{
                    return value
                }
            }else{
                dict[value] = 1
            }
        }
        
        return nums[0]
    }
}

let a = Solution.init().majorityElement([1])
print(a)

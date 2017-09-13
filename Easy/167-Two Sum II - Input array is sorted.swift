
 //167. Two Sum II - Input array is sorted
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var leftIndex = 0
        var rightIndex = numbers.count-1
        while leftIndex != rightIndex{
            let leftValue = numbers[leftIndex]
            let rightValue = numbers[rightIndex]
            
            let sum = leftValue + rightValue
            if sum == target{
                return [leftIndex+1,rightIndex+1]
                
            }else if sum<target{
                leftIndex += 1
                
            }else{
                rightIndex -= 1
                
            }
        }
        
        
        
        return [Int]()

    }
}
let a = [1,2,3,4,5,6,6,7,8,9,10]

let array = Solution().twoSum(a, 9)
print(array)

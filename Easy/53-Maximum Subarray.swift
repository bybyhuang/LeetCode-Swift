func maxSubArray(_ nums: [Int]) -> Int {
    var sum = 0
    
    var maxSum = nums[0]
    for value in nums{
        sum += value
        if sum > maxSum{
            maxSum = sum
        }
        if sum < 0{
            sum = 0
        }
    }
    return maxSum
    
}
var sum = maxSubArray([-1,-2,5,-4,50000])
print(sum)

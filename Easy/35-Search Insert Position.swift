
//35.Search Insert Position
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count > 0 else {return 0}
    for index in 0...nums.count - 1 {
        let value = nums[index]
        if value >= target{
            
            return index
        }
        
        
    }
    return nums.count
    
}

let array = [1,3,5,6]
let postion = searchInsert(array, 0)
print(postion)


//119-Pascal's Triangle II
class Solution {
    func getRow(_ rowIndex: Int) -> [Int]{
        var array = [[Int]]()
        
        for i in 0..<rowIndex+1{
            var newArray = [Int]()
            if i == 0{
                newArray.append(1)
            }else{
                let lastArray = array[i-1]
                for j in 0..<lastArray.count{
                    if j == 0{
                        newArray.append(1)
                    }else{
                        newArray.append(lastArray[j-1]+lastArray[j])
                    }
                }
                
                newArray.append(1)
            }
            array.append(newArray)
        }
        
        
        return array.last!
    }
}

let array = Solution().getRow(0)
print(array)

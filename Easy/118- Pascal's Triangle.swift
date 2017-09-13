
//118. Pascal's Triangle -杨辉三角
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var array = [[Int]]()
        
        for i in 0..<numRows{
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
        
        
        return array
    }
}

let array = Solution().generate(5)
print(array)

//66. Plus One
func plusOne(_ digits: [Int]) -> [Int] {
    var array = [Int]()
    var needForward = false
    for i in (0..<digits.count).reversed(){
        var value = 0
        if i == digits.count - 1{
            value = digits[i] + 1
        }else{
            value = digits[i]
        }
        
        
        if needForward {
            value += 1
        }
        if value >= 10{
            needForward = true
            array.insert(value - 10, at: 0)
        }else{
            needForward = false
            array.insert(value, at: 0)
        }
        
    }
    if needForward {
        array.insert(1, at: 0)
    }
    return array;
}

var array =  plusOne([9,1,1,9])
print(array)

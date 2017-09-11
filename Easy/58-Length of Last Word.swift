func lengthOfLastWord(_ s: String) -> Int {
    var array = Array(s.characters)
    
    let arrayCount = array.count
    
    if arrayCount == 0{
        return 0
    }
    
    var isSpace = true
    var sapceNum = 0
    for index in (0...arrayCount-1).reversed(){
        let value = array[index]
        if value == " "{
            if isSpace == false{
                return arrayCount - 1 - index - sapceNum
            }
            sapceNum += 1
            
        }else{
            isSpace = false
        }
    }
    
    
    return arrayCount - sapceNum
    
}

var length = lengthOfLastWord("")
print(length)

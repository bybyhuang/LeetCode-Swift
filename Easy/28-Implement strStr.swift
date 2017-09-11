
//28-Implement strStr()

func strStr(_ haystack: String, _ needle: String) -> Int {
    
    
    let haystackCount = haystack.characters.count
    let needleCount =  needle.characters.count
    if haystackCount == 0 && needleCount == 0{
        return 0
    }
    
    guard haystackCount >= needleCount && haystack.characters.count != 0 else {
        return -1
    }
    
    
  
    
    for index in 0...haystackCount-needleCount{
        
        //开始的
        let starIndex = haystack.characters.index(haystack.startIndex, offsetBy: index)
        let currentChars = haystack.characters.suffix(from: starIndex).prefix(needleCount)
        let currentStr = String.init(currentChars)
        if currentStr == needle{
            return index
        }
    }
    
    
    

    return -1
    
}
let index = strStr("", "1")
print(index)

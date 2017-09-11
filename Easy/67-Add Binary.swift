//67. Add Binary
func addBinary(_ a: String, _ b: String) -> String {
    var aArray = Array(a.characters)
    var bArray = Array(b.characters)
 
    let aCount = aArray.count
    let bCount = bArray.count

    if aCount < bCount {
        for _ in 0..<bCount-aCount {
            aArray.insert("0", at: 0)
        }
        
    }else{
        for _ in 0..<aCount-bCount {
            bArray.insert("0", at: 0)
        }
    }
    var needAddOne = 0
    var returnString = ""
    for i in (0..<aArray.count).reversed() {

        
        let aInt = Int(String(aArray[i]))!
        
        
        //b的int值
        let bInt = Int(String(bArray[i]))!
        
        var  sumInt = aInt + needAddOne + bInt
        if sumInt >= 2 {
            needAddOne = 1
            sumInt = sumInt - 2
        }else{
            needAddOne = 0
        }
        returnString = "\(sumInt)" + returnString

    }
    if needAddOne == 1{
        returnString = "1" + returnString
    }
    
    return returnString
    
}
let a = addBinary("1", "111")

print(a)



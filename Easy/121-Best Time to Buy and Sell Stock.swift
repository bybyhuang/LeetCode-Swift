//121. Best Time to Buy and Sell Stock
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count == 0{
            return 0
        }
        
        var minPrice = prices[0]
        var maxPrice = minPrice
        
        var currentArchive = 0
        for i in 1..<prices.count{
            let price = prices[i]
            if price < minPrice{
                minPrice = price
                maxPrice = price
                let archive = maxPrice - minPrice
                if  archive > currentArchive {
                    currentArchive = archive
                }
                
            }else{
                if price>maxPrice{
                    maxPrice = price
                    
                    let archive = maxPrice - minPrice
                    if  archive > currentArchive {
                        currentArchive = archive
                    }
                }
            }
            
        }
        
     
        return currentArchive;
    }
}

let a = Solution().maxProfit([2,4,1])
print(a)

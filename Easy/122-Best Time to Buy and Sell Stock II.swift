//122. Best Time to Buy and Sell Stock II
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count>0 else {return 0}

        
        var minPrice = prices[0]
        var sum = 0
        for i in 1..<prices.count {
            let price = prices[i]
            
            if price < minPrice {
                minPrice = price
            }else{
                //这个时候需要添加钱
                sum = sum + price - minPrice
                minPrice = price
            }
        }
        
        return sum;
    }
}

var sum = Solution().maxProfit([1])
print(sum)

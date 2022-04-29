import UIKit

class Solution {

    func reverse(_ x: Int) -> Int {
        var isNegative = x < 0
        var absX = abs(x)
        var result = 0

        while absX > 0 {
            var remain  = absX % 10
            result *= 10
            result += remain

            absX /= 10
        }

        result *= (isNegative ? -1 : 1)

        if result > NSDecimalNumber(decimal: pow(2, 31)).intValue - 1 {
            return 0
        } else if result < NSDecimalNumber(decimal: pow(-2, 31)).intValue {
            return 0
        } else {
            return result
        }
    }
}


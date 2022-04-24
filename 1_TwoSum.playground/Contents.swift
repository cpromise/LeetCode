import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var count = nums.count

        for i in 0..<(count-1) {
            var num = nums[i]
            for j in (i+1)..<count {
                if target - num == nums[j] { return [i, j] }
            }
        }

        return [-1, -1]
    }
}

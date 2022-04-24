import Foundation

// String으로 하던걸 [Character]로 하니까 성능이 4배 올라감

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count < 2 { return s.count }

        var result = 0
        var stringBuffer: [Character] = []

        for char in s {
            if let firstIndex = stringBuffer.firstIndex(of: char) {
                result = max(result, stringBuffer.count)
                stringBuffer.removeFirst(firstIndex + 1)
            }

            stringBuffer.append(char)
        }

        return max(result, stringBuffer.count)
    }
}

print(Solution().lengthOfLongestSubstring("abccdceacc"))
print(Solution().lengthOfLongestSubstring(" "))
print(Solution().lengthOfLongestSubstring("abc"))
print(Solution().lengthOfLongestSubstring("aabaab!bb"))

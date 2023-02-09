class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if nums.contains(target) {
            return nums.firstIndex(of: target) ?? 0
        }
        
        for (index, value) in nums.enumerated() {
            if value > target {
                return index
            } else if index == nums.count-1{
                return index+1
            }
        }
        
        return 0
    }
}

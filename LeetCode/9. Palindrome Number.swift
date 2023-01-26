class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var strX = String(x)
        
        if strX == String(strX.reversed()){
            return true
        } else {
            return false
        }
    }
}

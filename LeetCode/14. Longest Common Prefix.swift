class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var str: String = ""
        var string: String = ""
        var ctrl: Bool = false

        for i in strs[0] {
            if strs[0].isEmpty {
                break
            }
            str += String(i)
            for k in strs {
                if !k.hasPrefix(str) {
                    ctrl = true
                }
            }
            if ctrl {
                break
            }
            string = str
        }
        
        return string
    }
}

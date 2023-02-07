class Solution {
    func romanToInt(_ s: String) -> Int {
        var result = 0 ,number = 0, previous = 0
        var roman = String(s.reversed())
        
        for i in roman {
            switch i {
            case "I":
                number = 1
            case "V":
                number = 5
            case "X":
                number = 10
            case "L":
                number = 50
            case "C":
                number = 100
            case "D":
                number = 500
            case "M":
                number = 1000
            default:
                number = 0
            }
            if number < previous{
                result -= number
            } else {
                result += number
            }
            previous = number
        }
        
        return result
    }
}

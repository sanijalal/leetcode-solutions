class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sumIsFound = false
        var indexDictionary: [Int:Int] = [:]
        
        let arrayLength = nums.count
        for (index, number) in nums.enumerated() {
            let complement = target - number
            
            if let otherIndex = indexDictionary[complement] {
                return [index, otherIndex]
            }
            
            indexDictionary[number] = index
        }
        return []
    }
}
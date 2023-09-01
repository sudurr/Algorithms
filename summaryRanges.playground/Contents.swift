func summaryRanges(of nums: [Int]) -> [String] {

    var sortedNums = nums.sorted()

    guard !sortedNums.isEmpty else {return []}

    var result = [String]()
    var start = sortedNums[0]
    var end = sortedNums[0]

    for i in 1..<sortedNums.count {
        if sortedNums[i] == end + 1 {
            end = sortedNums[i]
        } else {
            if start == end {
                result.append("\(start)")
            } else {
                result.append("\(start) -> \(end)")
            }
            start = sortedNums[i]
            end = sortedNums[i]
        }
    }

    if start == end {
        result.append("\(start)")
    } else {
        result.append("\(start) -> \(end)")
    }

    return result
}

let array = [2,3,1,6,7,8,11,22,24,23]

print(summaryRanges(of: array)) // ["1 -> 3", "6 -> 8", "11", "22 -> 24"]


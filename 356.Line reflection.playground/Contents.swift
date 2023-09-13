//Дан массив точек с целочисленными координатами (X, У).
//Определить, судествует ли вертикальная примая, делящая точки на 2 симметричных относительно этой прямой множества
//
// [[0, 0], [0, 0], [1, 1], [2, 2], [3, 1], [4, 0], [4, 0]] // true
// [[0, 0], [0, 0], [1, 1], [2, 2], [3, 1], [4, 0]] // false
// [] // true
// [[0, 0]] // true
//[[0, 0], [10, 0]] // true
//[[0, 0], [11, 1]] // false
//[[0, 0], [1, 0], [3, 0]] // false

func isReflected(_ points: [[Int]]) -> Bool {
    var minX = Int.max, maxX = Int.min
    var pointSet = Set<[Int]>()

    for point in points {
        pointSet.insert(point)
        minX = min(point[0], minX)
        maxX = max(point[0], maxX)
    }

    let sum = minX + maxX

    for item in pointSet {
        if item[0] == sum {
            continue
        }

        if !pointSet.contains([sum - item[0], item[1]]) {
            return false
        }
    }
    return true
}



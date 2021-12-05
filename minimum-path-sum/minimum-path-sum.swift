class Solution {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let sizeOfRows: Int = grid.count
        let sizeOfColumns: Int = grid[0].count
        let moves: [(row: Int, column: Int)] = [
            (1, 0),
            (0, 1)
        ]
        var visited: [[Int]] = Array(repeating: Array(repeating: -1, count: sizeOfColumns), count: sizeOfRows)
        var queue: [(Int, Int)] = []
        
        queue.append((0, 0))
        visited[0][0] = grid[0][0]
        
        while !queue.isEmpty {
            let current: (row: Int, column: Int) = queue.removeFirst()
            print("current: \(current.row), \(current.column)")
            for move in moves {
                let next: (row: Int, column: Int) = (current.row + move.row, current.column + move.column)
                
                // next is out of grid
                if next.row < 0 || next.row >= sizeOfRows || next.column < 0 || next.column >= sizeOfColumns { continue }
                // next is already visited
                if visited[next.row][next.column] != -1 && visited[current.row][current.column] + grid[next.row][next.column] >= visited[next.row][next.column] { continue }
                
                visited[next.row][next.column] = visited[current.row][current.column] + grid[next.row][next.column]
                queue.append(next)
            }
        }
        
        return visited[sizeOfRows - 1][sizeOfColumns - 1]
    }
}
typealias Task = Character

class Solution {
    
    func leastInterval(_ tasks: [Task], _ n: Int) -> Int {
        guard n > 0 else { return tasks.count }
        
        var taskFrequency = getTaskFrequency(tasks)
        let maxFrequency = taskFrequency[0].1
        
        var idleTime = (maxFrequency - 1)*n
        
        //Decreasing idle time with other tasks frequencies
        for i in 1..<taskFrequency.count {
            idleTime -= min(maxFrequency - 1, taskFrequency[i].1)
        }
        
        //min could only be 0
        idleTime = max(0, idleTime)
        
        return tasks.count + idleTime
    }
    
    private func getTaskFrequency(_ tasks: [Task]) -> [(Task, Int)] {
        var dict = [Task: Int]()
        
        tasks.forEach { dict[$0, default: 0] += 1 }
        dict.sorted(by: { $0.value > $1.value })
        
        return dict.sorted(by: { $0.value > $1.value })
    }
}
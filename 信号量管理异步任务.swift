        let semaphore = DispatchSemaphore(value: 1)
        let queue = DispatchQueue(label: "syncDataQueue")
        
        queue.async {
            semaphore.wait()
            semaphore.signal()
        }
        
        queue.async {
            semaphore.wait()
            semaphore.signal()
        }
        
        queue.async {
            semaphore.wait()
            print("所有任务都已完成")
            semaphore.signal()
        }
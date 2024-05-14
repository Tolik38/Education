//import Foundation
//
//class PingTester {
//    let targetURL = URL(string: "https://www.google.com")!
//    var timer: Timer?
//
//    func startPing() {
//        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
//            self.ping()
//        }
//    }
//
//    func ping() {
//        let startTime = Date()
//        URLSession.shared.dataTask(with: targetURL) { _, _, _ in
//            let endTime = Date()
//            let pingTime = endTime.timeIntervalSince(startTime) * 1000 // Convert to milliseconds
//            print("Ping time: \(pingTime) ms")
//        }.resume()
//    }
//
//    func stopPing() {
//        timer?.invalidate()
//    }
//}
//
//// Usage:
//let pingTester = PingTester()
//pingTester.startPing()
//// Call pingTester.stopPing() when needed (e.g., when the app exits)

import UIKit

protocol EngineerDelegat: AnyObject {
    func taskHasEnded()
    func didFinishResearch(data: String)
    func didFinishAnalizeRequirements(results: [String])
    
}

class Engineer {
    var tasks:Int = 0 {
        didSet {
            if tasks == 0 {
                delegate?.taskHasEnded()
            }
        }
    }
    
    func startResearch(_ data: String = "") {
        // google
        // create document
        // review doc
        delegate?.didFinishResearch(data: "Document")
    }
    func analize (requirements: [String]){
        delegate?.didFinishAnalizeRequirements(results: ["Question 1", "Question 2"])
    }
    
    func taskDone() {
    tasks -= 1
    }
    
    weak var delegate: EngineerDelegat?
}

class ProjectManager{
    var engineer: Engineer?
    
    func addTaskToEngineer(_ numberOfTasks: Int = 1) {
        engineer?.tasks += numberOfTasks
    }
}

extension ProjectManager: EngineerDelegat {
    func didFinishResearch(data: String) {
        addTaskToEngineer(2)
    }
    
    func didFinishAnalizeRequirements(results: [String]) {
        print("Client, clirify requirements")
    }
    
    func taskHasEnded() {
        print("Client, give me tasks!")
    }
}

var engineer = Engineer()
var manager = ProjectManager()
engineer.delegate = manager
manager.engineer = engineer
manager.addTaskToEngineer()

engineer.tasks
engineer.taskDone()

engineer.analize(requirements: [])
engineer.tasks

engineer.startResearch()
engineer.tasks
//1. protocol
//2. obj1: property weak var delegate: ProtocolDelegate?
//3. obj2: :ProtocolDelegate

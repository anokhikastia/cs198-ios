/*
 Partner 1 Name + Email:
 Partner 2 Name + Email:
 */
/*:
 ## Lab 2: Workplace
 
 Please refer to the [lab spec](http://iosdecal.com/sp19/lab/lab2/) for further instructions.
 
 ### Part 1: Implementing Protocols and Extensions
 */
protocol Payable {
    func wages() -> Double
}
extension Payable {
    func wages() -> Double {
        return 50000.00;
    }
}

protocol TimeOff {
    var vacationDays: Int { get set }
    func requestForVaction(_ days: Int) -> Bool
}
extension TimeOff {
    func requestForVaction(_ days: Int) -> Bool {
        if (vacationDays > 7) {
            return true;
        }
        return false;
    }
}

enum Task {
    case spreadsheet
    case emails
    case coffee
}
protocol Work {
    func doWork(_ task: Task) -> String
}
extension Work {
    func doWork(_ task: Task) -> String {
        switch task {
        case .spreadsheet:
            return "Balancing the company budget"
        case .emails:
            return "Checking emails"
        case .coffee:
            return "Getting coffee"
        }
    }
}
// YOUR CODE HERE
struct Manager {
    var name: String
    var vacationDays: Int = 30
    func wages() -> Double {
        return 10000.00;
    }
}
extension Manager : Employee {
}

struct Worker {
    var name: String
    var vacationDays: Int = 15
}
extension Worker: Employee, TimeOff, Work { }

protocol Employee: Payable, TimeOff {
    
}
/*:
 ### Part 2: Putting It All Together
 */


// YOUR CODE HERE




/*:
 #
 
 
 ### Test cases
 
 Uncomment and run these as a sanity check
 */
/*
 struct FakePerson: Payable, TimeOff, Work {
 var vacationDays: Int = 15
 }
 
 var testPerson = FakePerson()
 testPerson.wages()                   // Should return 50,000
 testPerson.requestForVacation(15)    // Should return true
 testPerson.requestForVacation(16)    // Should return false
 testPerson.vacationDays = 0
 testPerson.requestForVacation(1)     // Should return false
 testPerson.doWork(.coffee)           // Should return "Getting coffee"
 testPerson.doWork(.emails)           // Should return "Checking emails"
 testPerson.doWork(.spreadsheet)      // Should return "Balancing the company budget"
 
 var testManager = Manager(name: "Riley", vacationDays: 30)
 var testWorker = Worker(name: "Quinn", vacationDays: 15)
 testManager.wages()                  // Should return 100,000
 testManager.requestForVacation(15)   // Should return true
 testManager.requestForVacation(31)   // Should return false
 testWorker.wages()                   // Should return 50,000
 testWorker.requestForVacation(15)    // Should return true
 testWorker.requestForVacation(16)    // Should return false
 testWorker.doWork(.coffee)           // Should return "Getting coffee"
 */

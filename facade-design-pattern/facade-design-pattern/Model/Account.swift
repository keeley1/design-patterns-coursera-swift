import Foundation

// Start pattern by defining an interface (Protocol for Swift)
public protocol Account {
    func depositMoney(amount: Int)
    func withdrawMoney(amount: Int)
    func getAccountBalance() -> String
}

// Next, implement the interface with one or more classes
// Class One:
class CurrentAccount: Account {
    let accountId: String
    var accountName: String
    var accountBalance: Int
    
    init(accountId: String, accountName: String, accountBalance: Int) {
        self.accountId = accountId
        self.accountName = accountName
        self.accountBalance = accountBalance
    }
    
    func depositMoney(amount: Int) {
        accountBalance += amount
        print("Money successfully deposited")
    }
    
    func withdrawMoney(amount: Int) {
        if amount < accountBalance {
            accountBalance -= amount
            print("Money successfully withdrawn")
        } else {
            print("Error withdrawing money")
        }
    }
    
    func getAccountBalance() -> String {
        return "£\(accountBalance)"
    }
}

// Class Two:
class SavingsAccount: Account {
    let accountId: String
    var accountName: String
    var accountBalance: Int
    
    init(accountId: String, accountName: String, accountBalance: Int) {
        self.accountId = accountId
        self.accountName = accountName
        self.accountBalance = accountBalance
    }
    
    func depositMoney(amount: Int) {
        accountBalance += amount
        print("Money successfully deposited")
    }
    
    func withdrawMoney(amount: Int) {
        if amount < accountBalance {
            accountBalance -= amount
            print("Money successfully withdrawn")
        } else {
            print("Error withdrawing money")
        }
    }
    
    func getAccountBalance() -> String {
        return "£\(accountBalance)"
    }
}

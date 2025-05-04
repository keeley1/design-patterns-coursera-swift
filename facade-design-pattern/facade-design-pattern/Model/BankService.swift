import Foundation

// Bank service class is the facade class
// public methods are simple to use, show no hint of underlying interface + implementation
class BankService {
    // set to private - information hiding design principle
    private var bankAccounts: [Account] = []
    
    func createNewAccount(accountType: String) {
        var newAccount: Account
        if accountType == "Current" {
            newAccount = CurrentAccount(accountId: "123",
                                        accountName: "Current Account",
                                        accountBalance: 100)
            bankAccounts.append(newAccount)
        } else if accountType == "Savings" {
            newAccount = SavingsAccount(accountId: "124",
                                        accountName: "Savings Account",
                                        accountBalance: 300)
            bankAccounts.append(newAccount)
        } else {
            print("Invalid account type")
        }
    }
    
    func withdrawMoney(accountId: String, amount: Int) {
        // get account + withdraw money
    }
}

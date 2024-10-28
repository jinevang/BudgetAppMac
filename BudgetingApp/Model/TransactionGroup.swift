//
//  TransactionGroup.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import Foundation

struct TransactionGroup: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let transactions: [Transaction]
    
    init(title: String, transactions: [Transaction] = []) {
        self.title = title
        self.transactions = transactions
    }
    
    static func example() -> TransactionGroup {
        let transaction1 = Transaction(date: Date(), title: "Example 1", category: .food, amount: 25)
        let transaction2 = Transaction(date: Date(), title: "Example 1", category: .food, amount: 25)
        
        return TransactionGroup(title: "January", transactions: [transaction1, transaction2])
    }
    
    static func examples() -> [TransactionGroup] {
        let group1 = TransactionGroup.example()
        let group2 = TransactionGroup(title: "February")
        let group3 = TransactionGroup(title: "March")
        let group4 = TransactionGroup(title: "April")


        
        return [group1, group2, group3, group4]
    }
}

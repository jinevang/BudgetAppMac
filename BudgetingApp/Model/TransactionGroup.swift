//
//  TransactionGroup.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import Foundation

struct TransactionGroup: Identifiable {
    let id = UUID()
    let title: String
    let transactions: [Transaction]
    
    init(title: String, transactions: [Transaction] = []) {
        self.title = title
        self.transactions = transactions
    }
    
    static func example() -> TransactionGroup {
        let transaction1 = Transaction(id: UUID(), date: Date(), title: "Example 1", category: .food, amount: 25)
        let transaction2 = Transaction(id: UUID(), date: Date(), title: "Example 1", category: .food, amount: 25)
        
        return TransactionGroup(title: "This Month (example)", transactions: [transaction1, transaction2])
    }
    
    static func examples() -> [TransactionGroup] {
        let group1 = TransactionGroup.example()
        let group2 = TransactionGroup(title: "New list")
        
        return [group1, group2]
    }
}

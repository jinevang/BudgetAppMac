//
//  Transaction.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import Foundation

struct Transaction: Identifiable, Hashable {
    
    let id = UUID()
    var date: Date
    var title: String
    var category: Category
    var amount: Double
    var note: String?
    
    init(date: Date, title: String, category: Category, amount: Double, note: String? = nil) {
        self.date = date
        self.title = title
        self.category = category
        self.amount = amount
        self.note = note
    }
    
    static func example() -> Transaction {
        Transaction(date: .init(), title: "Example Transaction", category: .food, amount: 100.0)
    }
    
    static func examples() -> [Transaction] {
        [
            Transaction(date: Date(), title: "Example 1", category: .food, amount: 25),
            Transaction(date: Date(), title: "Example 2", category: .drinks, amount: 30),
            Transaction(date: Date(), title: "Example 3", category: .rent, amount: 25),
            Transaction(date: Date(), title: "Example 4", category: .food, amount: 15),
            Transaction(date: Date(), title: "Example 5", category: .entertainment, amount: 25),
            Transaction(date: Date(), title: "Example 6", category: .healthcare, amount: 10),

            

        ]
    }
}

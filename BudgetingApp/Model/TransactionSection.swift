//
//  TransactionSection.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import Foundation

enum TaskSection: Identifiable {
    case thisMonth
    case thisYear
    case list(TransactionGroup)
    
    var id: String {
        switch self {
        case .thisMonth: return "This Month"
        case .thisYear: return "This Year"
        case .list: return "List"
        }
    }
    
    var displayName: String {
        switch self {
        case .thisMonth: return "This Month"
        case .thisYear: return "This Year"
        case .list: return "List"
        }
    }
}

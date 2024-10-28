//
//  TransactionSection.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import Foundation

enum TransactionSection: Identifiable, CaseIterable, Hashable {
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
    
    static var allCases: [TransactionSection] {
        [.thisYear, .thisMonth]
    }
    
    static func == (lhs: TransactionSection, rhs: TransactionSection) -> Bool {
        lhs.id == rhs.id
    }
}

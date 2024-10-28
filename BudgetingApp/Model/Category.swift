//
//  Category.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import Foundation

enum Category: String, Codable, CaseIterable {
    case food
    case shopping
    case transportation
    case utilities
    case healthcare
    case personalCare
    case drinks
    case rent
    case loans
    case donation
    case entertainment
    case savings
    case debt
    case other
    
    var displayName: String {
        switch self {
        case .food: return "Food"
        case .shopping: return "Shopping"
        case .transportation: return "Transportation"
        case .utilities: return "Utilities"
        case .healthcare: return "Healthcare"
        case .personalCare: return "Personal Care"
        case .drinks: return "Drinks"
        case .rent: return "Rent"
        case .loans: return "Loans"
        default : return "Other"
        }
    }
}

//
//  TransactionListView.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import SwiftUI

struct TransactionListView: View {
    let title: String

    let transactions: [Transaction]
    var body: some View {
        List(transactions) { transaction in
            HStack{
                Text(transaction.title)
            }
        }
    }
}

#Preview {
    TransactionListView(title: "All", transactions: Transaction.examples())
}

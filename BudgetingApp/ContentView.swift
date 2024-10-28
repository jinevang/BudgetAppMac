//
//  ContentView.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import SwiftUI

enum SidebarSelection: Hashable {
    case section(TransactionSection)
    case group(TransactionGroup)
}

struct ContentView: View {
    
    @State private var userCreatedGroups: [TransactionGroup] = TransactionGroup.examples()
    @State private var selection: SidebarSelection = .section(TransactionSection.allCases.first!)

    var body: some View {
        NavigationSplitView {
            SidebarView(userCreatedGroups: userCreatedGroups, selection: $selection)
        } detail: {
            switch selection {
            case .section(let section):
                switch section{
                    case .thisMonth:
                        TransactionListView(title: "This Month", transactions: Transaction.examples())
                case .thisYear:
                    TransactionListView(title: "This Year", transactions: Transaction.examples())
                case .list:
                    TransactionListView(title: "All Transactions", transactions: Transaction.examples())
                }
            case .group(let group):
                TransactionListView(title: group.title, transactions: group.transactions)
                    
            }
        }
    }
}

#Preview {
    ContentView()
}

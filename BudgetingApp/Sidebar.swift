//
//  SidebarView.swift
//  BudgetingApp
//
//  Created by Evan Jin on 10/27/24.
//

import SwiftUI

struct SidebarView: View {
    
    let userCreatedGroups: [TransactionGroup]
    @Binding var selection: SidebarSelection  // Define the type explicitly
    
    var body: some View {
        List(selection: $selection) {
            Section("Favorites") {
                ForEach(TransactionSection.allCases) { section in
                    Text(section.displayName).tag(SidebarSelection.section(section))
                }
            }

            Section("Months") {
                ForEach(userCreatedGroups) { group in
                    Text(group.title).tag(SidebarSelection.group(group))
                }
            }
        }
    }
}

#Preview {
    SidebarView(userCreatedGroups: TransactionGroup.examples(), selection: .constant(.section(TransactionSection.allCases.first!)))
        .listStyle(.sidebar)
}


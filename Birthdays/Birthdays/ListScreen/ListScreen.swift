//
//  ListScreen.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import SwiftUI

struct ListScreen: View {
    @StateObject var viewModel: ListViewModel
    var body: some View {
        List {
            ForEach(viewModel.datasource) { model in
                VStack(spacing: 0) {
                    ProfileCellView()
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets(top: 0, leading: 12, bottom: 14, trailing: 12))
                .listRowBackground(Color.gray)
            }
        }
        
        Text("List Screen")
            .onAppear {
                viewModel.loadData()
            }
    }
}

struct ListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListScreen(viewModel: ListViewModel())
    }
}

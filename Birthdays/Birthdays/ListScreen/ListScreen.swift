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
        NavigationView {
            List {
                ForEach(viewModel.datasource) { model in
                    VStack(spacing: 0) {
                        ProfileCellView(dataSource: model)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 12, bottom: 14, trailing: 12))
                    .listRowBackground(Color.white)
                    .gesture(
                        TapGesture(count: 1)
                        .onEnded() {
                            viewModel.profileCellTapped(model: model)
                        }
                    )
                }
                NavigationLink("", isActive: $viewModel.showProfileScreen ) {
                    if let selectedItem = viewModel.selectedItem {
                        ProfileScreen(viewModel: ProfileViewModel(dataSource: selectedItem))
                    }
                }
                .hidden()
            }
            .navigationBarTitle(
                Text("listScreen.title")
            )
        }
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

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

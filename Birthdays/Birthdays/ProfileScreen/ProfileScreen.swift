//
//  ProfileScreen.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import SwiftUI

struct ProfileScreen: View {
    @StateObject var viewModel: ProfileViewModel
    var body: some View {
        VStack {
            HStack() {
                Text(viewModel.dataSource.name.first)
                Text(viewModel.dataSource.name.last)
            }
            HStack() {
                Text(String(viewModel.dataSource.dob.age))
                Text("profileScreen.ageLabel")
            }
        }
        
    }
}

//struct ProfileScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileScreen(viewModel: ProfileViewModel())
//    }
//}

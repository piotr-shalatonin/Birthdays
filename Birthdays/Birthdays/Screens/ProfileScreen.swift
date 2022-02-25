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
        Text("Profile Screen")
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen(viewModel: ProfileViewModel())
    }
}

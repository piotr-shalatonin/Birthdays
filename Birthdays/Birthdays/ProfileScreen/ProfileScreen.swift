//
//  ProfileScreen.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import SwiftUI

struct ProfileScreen: View {
    @StateObject var viewModel: ProfileViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack(spacing: 20) {
            HStack() {
                Text(viewModel.dataSource.name.first)
                Text(viewModel.dataSource.name.last)
            }
            HStack() {
                Text(String(viewModel.dataSource.dob.age))
                Text("profileScreen.ageLabel")
            }
            
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("profileScreen.backButton")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .foregroundColor(.white)
                    .padding(13)
                    .background(.black)
                    .cornerRadius(4)
            }
            .padding(.horizontal, 50)
            
                
            Spacer()
        }
        
    }
}

//struct ProfileScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileScreen(viewModel: ProfileViewModel())
//    }
//}

//
//  ProfileCellView.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import SwiftUI

struct ProfileCellView: View {
    var dataSource: ProfileListResultsModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Text(dataSource.name.first)
                Text(dataSource.name.last)
            }
            Text(dataSource.dob.date)
        }
        
    }
}

//struct ProfileCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileCellView(dataSource: ProfileListResultsModel())
//    }
//}

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
        HStack() {
            RoundedRectangle(cornerRadius: 35, style: .continuous)
                .fill(Color.gray)
                            .frame(width: 70, height: 70)
                            .overlay(
                                Group {
                                    Text(dataSource.name.first.suffix(1).uppercased())
                                    + Text("")
                                    + Text(dataSource.name.last.suffix(1).uppercased())
                                }
                                .font(Font.custom("Roboto-Bold", size: 13, relativeTo: .body))
                            )
            VStack(alignment: .leading) {
                HStack() {
                    Group {
                        Text(dataSource.name.first)
                        + Text("")
                        + Text(dataSource.name.last)
                    }
                    .font(Font.custom("Roboto-Bold", size: 13, relativeTo: .body))
                }
                Text(dataSource.dob.date)
                    .font(Font.custom("Roboto-Regular", size: 13, relativeTo: .body))
            }
        }
        
    }
}

//struct ProfileCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileCellView(dataSource: ProfileListResultsModel())
//    }
//}

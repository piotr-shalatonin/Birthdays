//
//  ProfileViewModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

class ProfileViewModel: ObservableObject {
    var dataSource: ProfileListResultsModel
    
    init(dataSource: ProfileListResultsModel) {
        self.dataSource = dataSource
    }
}

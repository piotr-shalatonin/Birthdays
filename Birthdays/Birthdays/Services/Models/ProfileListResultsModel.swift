//
//  ProfileListResultsModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

struct ProfileListResultsModel: Codable {
    let name: ProfileListResultsNameModel
    let dob: ProfileListResultsDobModel

    enum CodingKeys: String, CodingKey {
        case name
        case dob
    }
}

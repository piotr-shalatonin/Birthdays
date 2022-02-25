//
//  ProfileListModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

struct ProfileListModel: Codable {
    let results: [ProfileListResultsModel]
    let info: ProfileListInfoModel

    enum CodingKeys: String, CodingKey {
        case results
        case info
    }
}

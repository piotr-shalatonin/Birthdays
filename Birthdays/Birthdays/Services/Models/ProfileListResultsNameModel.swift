//
//  ProfileListResultsNameModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

struct ProfileListResultsNameModel: Codable {
    let title: String
    let first: String
    let last: String

    enum CodingKeys: String, CodingKey {
        case title
        case first
        case last
    }
}

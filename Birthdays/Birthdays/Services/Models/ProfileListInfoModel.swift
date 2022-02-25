//
//  ProfileListInfoModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

struct ProfileListInfoModel: Codable {
    let seed: String
    let results: Int
    let page: Int
    let version: String

    enum CodingKeys: String, CodingKey {
        case seed
        case results
        case page
        case version
    }
}

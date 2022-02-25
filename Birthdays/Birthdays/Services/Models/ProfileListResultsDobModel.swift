//
//  ProfileListResultsDobModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

struct ProfileListResultsDobModel: Codable {
    let date: String
    let age: Int

    enum CodingKeys: String, CodingKey {
        case date
        case age
    }
}

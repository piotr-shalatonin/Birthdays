//
//  GlobalUtils.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

enum GlobalUtils {
    static func constructURL(for endpoint: String) -> URL? {
        var components = URLComponents()
        components.scheme = GlobalConstants.Network.scheme
        components.host = GlobalConstants.Network.baseURL
        components.path = endpoint

        return components.url
    }
}

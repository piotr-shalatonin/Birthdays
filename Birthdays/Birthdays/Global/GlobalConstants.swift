//
//  GlobalConstants.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

enum GlobalConstants {
    enum Network {
        static let scheme = "https"
        static let baseURL = "randomuser.me/api"
        static let getMethod = "GET"
        static let contentTypeHeaderKey = "Content-Type"
        static let contentTypeJSONHeaderValue = "application/json"
        
        static let getProfilesListEndpoint = "/?results=5&seed=chalkboard&inc=name,dob"
        // Full url should be: 'https://randomuser.me/api/?results=5&seed=chalkboard&inc=name,dob'
        static let getProfilesListEndpointFull = "\(scheme)://\(baseURL)\(getProfilesListEndpoint)"
    }
}

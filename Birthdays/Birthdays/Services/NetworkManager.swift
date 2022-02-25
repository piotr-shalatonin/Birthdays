//
//  NetworkManager.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Foundation

import Combine
import Foundation

protocol NetworkManagerProtocol {
    func makeApiCall<T: Decodable>(urlRequest: URLRequest) -> AnyPublisher<T, Error>?
}

class NetworkManager: NetworkManagerProtocol {
    func makeApiCall<T: Decodable>(urlRequest: URLRequest) -> AnyPublisher<T, Error>? {
        return URLSession.shared
            .dataTaskPublisher(for: urlRequest)
            .receive(on: DispatchQueue.main)
            .map(\.data)
            .print()
            .decode(
                type: T.self,
                decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}

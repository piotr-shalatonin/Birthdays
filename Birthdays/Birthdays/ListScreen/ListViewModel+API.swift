//
//  ListViewModel+API.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Combine
import Foundation

extension ListViewModel {
    func loadData() {
        guard let request = createUrlRequest() else {
            return
        }
        
        let publisher: AnyPublisher<ProfileListModel, Error>? = networkManager.makeApiCall(urlRequest: request)

        publisher?.sink {completion in
            switch completion {
            case .finished:
                print("Finished")
            case .failure(let error):
                print("Error - \(error.localizedDescription)")
            }
        } receiveValue: { [weak self] model in
            self?.datasource = model.results
        }
        .store(in: &cancellables)
    }
    
    private func createUrlRequest() -> URLRequest? {
        // TODO: implement constructURL method with parameters
//        var url: URL?
//        url = GlobalUtils.constructURL(for: GlobalConstants.Network.getProfilesListEndpoint)

        let url = URL.init(string: GlobalConstants.Network.getProfilesListEndpointFull)
        
        guard let url = url else { return nil }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = GlobalConstants.Network.getMethod
        urlRequest.addValue(
            GlobalConstants.Network.contentTypeJSONHeaderValue,
            forHTTPHeaderField: GlobalConstants.Network.contentTypeHeaderKey
        )

        return urlRequest
    }
}

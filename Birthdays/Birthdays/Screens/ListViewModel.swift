//
//  ListViewModel.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import Combine
import Foundation

class ListViewModel: ObservableObject {
    @Published var datasource = [ProfileListResultsModel]()
    var cancellables: Set<AnyCancellable> = []
    
    var networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol = NetworkManager()) {
        self.networkManager = networkManager
    }
    
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
        } receiveValue: { model in
            
        }
        .store(in: &cancellables)
    }
    
    private func createUrlRequest() -> URLRequest? {
//        var url: URL?
//        url = GlobalUtils.constructURL(for: GlobalConstants.Network.getProfilesListEndpoint)
//
        let url = URL.init(string: "https://randomuser.me/api/?results=5&seed=chalkboard&inc=name,dob")
        
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

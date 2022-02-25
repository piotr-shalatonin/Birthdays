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
    @Published var selectedItem: ProfileListResultsModel?
    
    @Published var showProfileScreen = false
    
    var cancellables: Set<AnyCancellable> = []
    
    var networkManager: NetworkManagerProtocol
    
    init(networkManager: NetworkManagerProtocol = NetworkManager()) {
        self.networkManager = networkManager
    }
    
    func profileCellTapped(model: ProfileListResultsModel) {
        selectedItem = model
        showProfileScreen = true
    }
}

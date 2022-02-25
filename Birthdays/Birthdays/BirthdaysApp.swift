//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by Piotr Shalatonin on 25.02.22.
//

import SwiftUI

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ListScreen(viewModel: ListViewModel())
        }
    }
}

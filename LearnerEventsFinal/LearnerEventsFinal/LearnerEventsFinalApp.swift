//
//  CampaniaApp.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//

import SwiftUI

@main
struct LearnerEventsFinalApp: App {
    
    @State private var viewModel = EventsViewModel.shared
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                EventListView()
                    .environment(viewModel)
            }
        }
    }
}

//
//  CampaniaApp.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//
//  STARTER PROJECT: data flow is wired up during the workshop.
//

import SwiftUI

@main
struct LearnerEvents: App {
    /// TO DO:  Part 3
    var viewModel = EventsViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                EventListView(viewModel: viewModel)
                /// TO DO:  Part 3
            }
        }
    }
}

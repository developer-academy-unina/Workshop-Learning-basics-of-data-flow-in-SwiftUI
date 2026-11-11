//
//  CampaniaApp.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//
// INTERMEDIATE PROJECT: data flow has been partially implemented

import SwiftUI

@main
struct LearnerEventsIntermediate: App {
    /// TO DO: Part 3
    var viewModel = EventsViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                EventListView(viewModel: viewModel)
                /// TO DO: Part 3
            }
        }
    }
}

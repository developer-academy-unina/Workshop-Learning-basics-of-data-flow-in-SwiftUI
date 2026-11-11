//
//  EventListView.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//
// INTERMEDIATE PROJECT: data flow has been partially implemented

import SwiftUI

struct EventListView: View {
    
    /// TO DO: Part 3
    var viewModel: EventsViewModel
    
    /// DONE: Part 1
    @State private var isSheetOpen: Bool = false

    var body: some View {
        List(viewModel.events) { event in

            NavigationLink(destination: DetailView(event: event)
                /// TO DO: Part 3
            ) {

                VStack(alignment: .leading) {

                    Text("\(event.name)")

                    Text("\(event.date.formatted())")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            }

        }
        .navigationTitle("Academy events")
        .toolbar {
            ToolbarItem {
                Button {
                    /// DONE: PART 2
                    isSheetOpen = true
                } label: {
                    Label("Add event", systemImage: "plus")
                }
            }
        }
        .sheet(isPresented: $isSheetOpen) {
            NewEventForm(viewModel: viewModel, isSheetOpen: $isSheetOpen)
        }
    }
}

#Preview {
    NavigationStack {
        EventListView(viewModel: EventsViewModel())
    }
}

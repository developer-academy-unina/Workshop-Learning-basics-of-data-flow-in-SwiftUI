//
//  EventListView.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//
//  STARTER PROJECT: data flow will be built during the workshop.

import SwiftUI

struct EventListView: View {
    
    /// TO DO: Part 3
    var viewModel: EventsViewModel
    
    /// TO DO: Part 1

    var body: some View {
        List(viewModel.events) { event in

            NavigationLink(destination:
                DetailView(event: event)
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
                    /// TO DO: Part 2
                } label: {
                    Label("Add event", systemImage: "plus")
                }
            }
        }
        .sheet(isPresented: .constant(false)) {
            NewEventForm(viewModel: viewModel)
        }
    }
}

#Preview {
    NavigationStack {
        EventListView(viewModel: EventsViewModel())
    }
}

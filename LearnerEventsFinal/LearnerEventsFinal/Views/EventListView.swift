//
//  ContentView.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//

import SwiftUI

struct EventListView: View {
    
    @Environment(EventsViewModel.self) private var viewModel
    @State private var isSheetOpen: Bool = false
    
    var body: some View {
        List {
            ForEach(viewModel.events) { event in
                NavigationLink(destination: DetailView(event: event)) {
                    
                    VStack(alignment: .leading) {
                        
                        Text("\(event.name)")
                        
                        Text("\(event.date.formatted())")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
                
            }.onDelete(perform: viewModel.deleteEvent)
        }
        .navigationTitle("Academy events")
        .toolbar {
            ToolbarItem {
                Button {
                    isSheetOpen = true
                } label: {
                    Label("Add event", systemImage: "plus")
                }
                
            }
        }
        .sheet(isPresented: $isSheetOpen) {
            NewEventForm(isSheetOpen: $isSheetOpen)
        }
    }
}

#Preview {
    NavigationStack{
        EventListView()
            .environment(EventsViewModel.shared)
    }
}

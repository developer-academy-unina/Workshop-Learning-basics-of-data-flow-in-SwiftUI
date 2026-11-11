//
//  AddEvent.swift
//  Campania
//
//  Created by Sofia on 14/09/2026.
//

import SwiftUI

struct NewEventForm: View {
    @Environment(EventsViewModel.self) var viewModel
    @State private var newEvent = LearnerEvent(name: "", location: "", date: .now, bestMoments: "")

    @Binding var isSheetOpen: Bool

    var body: some View {
        NavigationStack {
            Form {
                Section("Event info") {
                    TextField("Name", text: $newEvent.name)
                    
                    TextField("Location", text: $newEvent.location)
                    
                    DatePicker("Date", selection: $newEvent.date, displayedComponents: .date)
                    
                }
                
                Section("Best moments") {
                    TextEditor(text: $newEvent.bestMoments)
                        .frame(minHeight: 120)
                }
            }
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        isSheetOpen = false
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        viewModel.addEvent(newEvent)
                        isSheetOpen = false
                    } label: {
                        Label("Save", systemImage: "checkmark")
                    }
                    .disabled(newEvent.name.isEmpty || newEvent.location.isEmpty)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        NewEventForm(isSheetOpen: .constant(true)).environment(EventsViewModel.shared)
    }
}

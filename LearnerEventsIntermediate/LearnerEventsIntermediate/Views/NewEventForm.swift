//
//  NewEventForm.swift
//  Campania
//
//  Created by Sofia on 14/09/2026.
//
// INTERMEDIATE PROJECT: data flow has been partially implemented

import SwiftUI

struct NewEventForm: View {
    /// TO DO:  Part 3
    var viewModel: EventsViewModel
    
    /// DONE: Part 1
    @State private var newEvent = LearnerEvent(name: "", location: "", date: .now, bestMoments: "")
    
    /// DONE: Part 2
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
                        /// DONE: Part 2
                        isSheetOpen = false
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        /// DONE:  Part 2
                        isSheetOpen = false
                        
                        /// TO DO: Part 3
                    } label: {
                        Label("Save", systemImage: "checkmark")
                    }
                    /// BONUS: Add "disabled"  modifier if some fields are empty
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        NewEventForm(viewModel: EventsViewModel(), isSheetOpen: .constant(true))
    }
}

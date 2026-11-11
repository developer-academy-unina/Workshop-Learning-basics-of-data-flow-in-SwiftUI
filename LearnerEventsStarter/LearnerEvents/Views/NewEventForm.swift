//
//  NewEventForm.swift
//  Campania
//
//  Created by Sofia on 14/09/2026.
//
//  STARTER PROJECT: data flow will be built during the workshop.
//

import SwiftUI

struct NewEventForm: View {
    /// TO DO: Part 3
    var viewModel: EventsViewModel
    
    /// TO DO:  Part 1
    
    /// TO DO:  Part 2

    var body: some View {
        NavigationStack {
            Form {
                Section("Event info") {
                    /// TO DO: Part 1
                    TextField("Name", text: .constant(""))
                    
                    /// TO DO:  Part 1
                    TextField("Location", text: .constant(""))
                    
                    /// TO DO:  Part 1
                    DatePicker("Date", selection: .constant(.now), displayedComponents: .date)
                }
                
                /// TO DO:  Part 1
                Section("Best moments") {
                    TextEditor(text: .constant(""))
                        .frame(minHeight: 120)
                }
            }
            .navigationTitle("New Event")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        /// TO DO: Part 2
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button {
                        /// TO DO: Part 2
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
        NewEventForm(viewModel: EventsViewModel())
    }
}

//
//  DetailView.swift
//  Campania
//
//  Created by Sofia on 14/09/2026.
//
//  STARTER PROJECT: data flow will be built during the workshop.

import SwiftUI

struct DetailView: View {
    
    let event: LearnerEvent
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            Label("Location: \(event.location)", systemImage: "mappin.circle")
            
            Label("Date: \(event.date)", systemImage: "calendar")
            
            Text(event.bestMoments)
            
            Spacer()
            
        }.padding()
        .navigationTitle(event.name)
    }
}

#Preview {
    DetailView(event: EventsViewModel().events[0])
}

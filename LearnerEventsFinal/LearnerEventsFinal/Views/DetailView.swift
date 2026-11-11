//
//  DetailView.swift
//  Campania
//
//  Created by Sofia on 14/09/2026.
//

import SwiftUI

struct DetailView: View {
    let event: LearnerEvent
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            Label("Location: \(event.location)", systemImage: "mappin.circle")
            
            Label("Date: \(event.date.formatted())", systemImage: "calendar")
            
            Text(event.bestMoments)
            
            Spacer()
            
        }.padding()
        .navigationTitle(event.name)
    }
}

#Preview {
    DetailView(event: EventsViewModel.shared.events[0])
}

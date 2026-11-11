//
//  ViewModel.swift
//  LearnerEvents
//
//  Created by Sofia on 02/11/2026.
//
// INTERMEDIATE PROJECT: data flow has been partially implemented

import SwiftUI

// Part 3
final class EventsViewModel {
    var events: [LearnerEvent] = [
        LearnerEvent(
            name: "Welcome Aperitivo",
            location: "Lungomare Caracciolo, Naples",
            date: .date(12, 9, 2026),
            bestMoments: "Everyone met for the first time over spritzes and snacks by the sea. We played icebreaker games, swapped countries and Instagram handles, and watched the sunset over the Gulf with Vesuvius in the background."
        ),
        LearnerEvent(
            name: "International Potluck Dinner",
            location: "Student Residence Common Room, Naples",
            date: .date(26, 9, 2026),
            bestMoments: "Each student cooked a dish from home: Spanish tortilla, Korean japchae, Mexican tacos, Turkish baklava. The table was packed, recipes were traded, and the Italian students tried (and rated) everything."
        ),
        LearnerEvent(
            name: "Pizza Night in Centro Storico",
            location: "Via dei Tribunali, Naples",
            date: .date(3, 10, 2026),
            bestMoments: "A big group squeezed into a tiny pizzeria and ordered margheritas by the dozen. We learned how to fold a pizza 'a portafoglio' and ended the night with sfogliatelle on the street."
        ),
        LearnerEvent(
            name: "Picnic at Villa Comunale",
            location: "Villa Comunale, Naples",
            date: .date(10, 10, 2026),
            bestMoments: "Blankets, homemade sandwiches, and a speaker playing music from every country in the group. We had a friendly football match, a card game tournament, and a lazy afternoon on the grass."
        ),
        LearnerEvent(
            name: "Day Trip to Pompeii",
            location: "Pompeii",
            date: .date(17, 10, 2026),
            bestMoments: "We explored the ruins together with an audio guide, took group photos at the Forum, and shared gelato afterward. The best part was swapping history facts from our different home countries."
        ),
        LearnerEvent(
            name: "Boat Outing to Capri",
            location: "Capri",
            date: .date(24, 10, 2026),
            bestMoments: "A ferry ride across the bay, swimming stops near the Faraglioni, and lunch overlooking the harbor. Everyone ended up on the upper deck singing along to songs in five different languages."
        ),
        LearnerEvent(
            name: "Halloween Costume Party",
            location: "Spazio Tra Terrace, Naples",
            date: .date(28, 10, 2026),
            bestMoments: "Costumes ranged from pizza slices to Neapolitan 'pulcinella' masks. We had a dance floor, a pumpkin-carving contest, and a playlist mixing reggaeton, K-pop, and Italian classics."
        ),
        LearnerEvent(
            name: "Hike on Mount Vesuvius",
            location: "Vesuvius National Park",
            date: .date(31, 10, 2026),
            bestMoments: "Planned for the weekend: a group hike to the crater rim with panoramic views of the bay, followed by a traditional lunch at a local trattoria."
        )
    ]
    
    func addEvent(_ newEvent: LearnerEvent) {
        events.append(newEvent)
    }
    
    func deleteEvent(at indexSet: IndexSet) {
        events.remove(atOffsets: indexSet)
    }
}

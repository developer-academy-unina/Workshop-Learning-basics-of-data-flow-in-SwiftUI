//
//  Models.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//
// STARTER PROJECT: data flow will be built during the workshop.
import Foundation

struct LearnerEvent: Identifiable {
    let id = UUID()
    var name: String
    var location: String
    var date: Date
    var bestMoments: String
}


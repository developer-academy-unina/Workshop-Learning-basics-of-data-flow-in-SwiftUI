//
//  Models.swift
//  Campania
//
//  Created by Sofia on 10/09/2026.
//
// INTERMEDIATE PROJECT: data flow has been partially implemented

import Foundation

struct LearnerEvent: Identifiable {
    let id = UUID()
    var name: String
    var location: String
    var date: Date
    var bestMoments: String
}


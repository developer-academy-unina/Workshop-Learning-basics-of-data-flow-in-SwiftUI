//
//  Date+date.swift
//  Campania
//
//  Created by Sofia.
//
import SwiftUI

extension Date {
    static func date(_ day: Int, _ month: Int, _ year: Int) -> Date {
        Calendar.current.date(from: DateComponents(year: year, month: month, day: day)) ?? .now
    }
    
    func formatted() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: self)
    }
}

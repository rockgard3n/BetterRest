//
//  ContentView_FoundationLearning.swift
//  BetterRest
//
//  Created by Liam Cashel on 1/30/24.
//

import SwiftUI

struct ContentView_FoundationLearning: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
//        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
//        DatePicker("Please enter date", selection: $wakeUp, in: Date.now..., displayedComponents: .date)
//            .labelsHidden()
        
        Text(Date.now, format: .dateTime.hour().minute())
        Text(Date.now.formatted(date: .long, time: .shortened))
    }
    
    func exampleDates() {
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
        
        let components = Calendar.current.dateComponents([.hour, . minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

#Preview {
    ContentView_FoundationLearning()
}

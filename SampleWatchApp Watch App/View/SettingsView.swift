//
//  SettingsView.swift
//  SampleWatchApp Watch App
//
//  Created by Karthik.Kurdekar on 05/09/24.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("lineCount") var lineCount: Int = 1
    var body: some View {
        VStack {
            HeaderView(title: "Settings")
            
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            Slider(value: Binding(get: {
                Float(lineCount)
            }, set: {(newValue) in
                lineCount = Int(newValue)
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        }
    }
}

#Preview {
    SettingsView()
}

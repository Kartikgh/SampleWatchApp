//
//  HeaderView.swift
//  SampleWatchApp Watch App
//
//  Created by Karthik.Kurdekar on 04/09/24.
//

import SwiftUI

struct HeaderView: View {
    
    var title: String = ""
    var body: some View {
        VStack {
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                
            }
            HStack {
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
        }
    }
}

#Preview {
    HeaderView()
}

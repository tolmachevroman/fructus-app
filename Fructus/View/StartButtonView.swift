//
//  StartButtonView.swift
//  Fructus
//
//  Created by Roman Tolmachev on 18.12.2023.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button {
            
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
}

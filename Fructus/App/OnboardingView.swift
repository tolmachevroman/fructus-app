//
//  OnboardingView.swift
//  Fructus
//
//  Created by Roman Tolmachev on 18.12.2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
       
    }
}

#Preview {
    OnboardingView()
}

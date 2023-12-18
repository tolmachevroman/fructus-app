//
//  OnboardingView.swift
//  Fructus
//
//  Created by Roman Tolmachev on 18.12.2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruit: [Fruit] = fruitData
    
    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(fruit[0...5]) { item in
                FruitCardView(fruit: item)
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
       
    }
}

#Preview {
    OnboardingView()
}

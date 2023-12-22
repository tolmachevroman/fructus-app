//
//  ContentView.swift
//  Fructus
//
//  Created by Roman Tolmachev on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
    ContentView(fruits: fruitData)
}

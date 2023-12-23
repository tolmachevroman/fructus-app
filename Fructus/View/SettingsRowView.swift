//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Roman Tolmachev on 23.12.2023.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

#Preview {
    VStack {
        SettingsRowView(name: "Developer", content: "John / Jane")
        Spacer().frame(height: 16)
        SettingsRowView(name: "Company", content: nil, linkLabel: "Apple", linkDestination: "apple.com")
    }.padding()
   
}

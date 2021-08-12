//
//  Navigations.swift
//  Platzi
//
//  Created by Fernando Florez on 11/08/21.
//

import SwiftUI

struct Navigations: View {
    @State var isDividersActive: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello World")
                    
                
                NavigationLink("Hola Otra Vista", destination: TabViews())
                
                NavigationLink(
                    destination: Dividers(),
                    isActive: $isDividersActive,
                    label: {
                        EmptyView()
                    })
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isDividersActive.toggle()
                    }) {
                        Text("+")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            })
            
        }
    }
}

struct Navigations_Previews: PreviewProvider {
    static var previews: some View {
        Navigations()
    }
}

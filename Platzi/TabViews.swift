//
//  TabViews.swift
//  Platzi
//
//  Created by Fernando Florez on 11/08/21.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
            TextMod()
                .tabItem {
                    Text("Screen 1")
                    Image(systemName: "moon")
                }
            
            TextFields()
                .tabItem {
                    Text("Screen 2")
                    Image(systemName: "play")
                }
            
            ZStacks()
                .tabItem {
                    Text("Screen 3")
                    Image(systemName: "terminal")
                }
        }
        .accentColor(.red)
    }
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}

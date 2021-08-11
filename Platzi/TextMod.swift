//
//  TextMod.swift
//  Platzi
//
//  Created by Fernando Florez on 10/08/21.
//

import SwiftUI

struct TextMod: View {
    var body: some View {
        Text("Hola Mundo!")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.red)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(Color.black)
            
    }
}

struct TextMod_Previews: PreviewProvider {
    static var previews: some View {
        TextMod()
    }
}

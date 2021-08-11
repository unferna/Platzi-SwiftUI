//
//  Images.swift
//  Platzi
//
//  Created by Fernando Florez on 10/08/21.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack {
            Text("Imágenes")
            Image("platziIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, alignment: .center)
                
            Text("Blurred")
            Image("platziIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, alignment: .center)
                .blur(radius: 8)
            
            Text("With Opacity")
            Image("platziIcon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, alignment: .center)
                .opacity(0.4)
            
            Text("Image button")
            Button(action: {
                print("Button image tapped")
            }) {
                Image("platziIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, alignment: .center)
            }

        }
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}

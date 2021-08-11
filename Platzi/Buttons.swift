//
//  Buttons.swift
//  Platzi
//
//  Created by Fernando Florez on 10/08/21.
//

import SwiftUI

struct Buttons: View {
    var body: some View {
        VStack {
            Button("Button 1", action: {
                print("Button 1 has been tapped")
            })
            
            Button("Button 2") {
                print("Button 2 has been tapped")
            }
            
            Button(action: saludo) {
                Text("Button 3")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
            }
        }
    }
    
    func saludo() {
        print("Hello world!!!")
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}

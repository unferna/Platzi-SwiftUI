//
//  TextFields.swift
//  Platzi
//
//  Created by Fernando Florez on 10/08/21.
//

import SwiftUI

struct TextFields: View {
    @State var textoVista: String = ""
    
    var body: some View {
        VStack {
            Text(textoVista)
                .bold()
            
            TextField("Escribe contraseña", text: $textoVista)
            
            Button("Cambia el texto de la vista") {
                textoVista = "Ferna " + String(Int.random(in: 0 ... 10))
            }
        }
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}

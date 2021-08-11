//
//  ZStacks.swift
//  Platzi
//
//  Created by Fernando Florez on 10/08/21.
//

import SwiftUI

struct ZStacks: View {
    @State var curso: String = ""
    
    var body: some View {
        ZStack {
            Color.yellow
            
            VStack {
                Image("platziIcon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                Text("Bienvenidos al curso de \(curso)")
                    .padding(.bottom)
                
                ZStack {
                    if curso == "" {
                        Text("Curso")
                            .foregroundColor(.blue)
                    }
                    
                    TextField("", text: $curso)
                        .padding()
                }
                
                VStack(alignment: .trailing) {
                    Text("1").border(Color.black)
                    Text("2").border(Color.black)
                    Text("3").border(Color.black)
                    
                    HStack(alignment: .top) {
                        Text("A")
                            .frame(width: 100, height: 100, alignment: .center)
                            .border(Color.black)
                        
                        Text("B").border(Color.black)
                        Text("C").border(Color.black)
                    }
                    .background(Color.red)
                    .border(Color.black)
                    
                }
                .background(Color.blue)
            }
        }.ignoresSafeArea()
    }
}

struct ZStacks_Previews: PreviewProvider {
    static var previews: some View {
        ZStacks()
    }
}

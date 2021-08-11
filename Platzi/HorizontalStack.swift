//
//  HorizontalStack.swift
//  Platzi
//
//  Created by Fernando Florez on 10/08/21.
//

import SwiftUI

struct HorizontalStack: View {
    var body: some View {
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
}

struct HorizontalStack_Previews: PreviewProvider {
    static var previews: some View {
        Image("reto")
        HorizontalStack()
    }
}

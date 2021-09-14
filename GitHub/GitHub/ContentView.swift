//
//  ContentView.swift
//  GitHub
//
//  Created by AMStudent on 9/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("How you doing?")
                .padding()
            Button(action:{}) {
                Text("HIT ME")
                    .font(.largeTitle)
                    .multilineTextAlignment(.leading)
           }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

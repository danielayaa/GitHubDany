//
//  ContentView.swift
//  TabView
//
//  Created by AMStudent on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            BlueView()
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("First Tab")
                }
            
            RedView()
                .tabItem {
                    Image(systemName: "tv.fill")
                    Text("Second Tab")
                }
        }
    }
}

struct BlueView: View {
    var body: some View {
        Color.blue
    }
}

struct RedView: View {
    var body: some View {
        Color.red
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


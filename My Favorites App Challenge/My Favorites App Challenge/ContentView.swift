//
//  ContentView.swift
//  My Favorites App Challenge
//
//  Created by AMStudent on 9/10/21.
//

import SwiftUI

struct ContentView: View {
    @State private var ShowIsVisible: Bool = false
    @State private var MusicianIsVisible: Bool = false
    @State private var FoodIsVisible: Bool = false
    @State private var ColorIsVisible: Bool = false
    @State private var GameIsVisible: Bool = false
    
    var body: some View {
        
        
        VStack {
            ZStack {
                Button(action: {
                    self.ShowIsVisible = true
                }) {
                Text("TV SHOW")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
                .frame(width: 150, height: 40)
                .padding(20.0)
                .background(
                    ZStack {
                        Color(.blue)
                        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(Color.white)
                .cornerRadius(25.0)
                .alert(isPresented: $ShowIsVisible, content: {
                    return Alert(title: Text("The Owl House"), message: Text("🦉👁✨"), dismissButton: .default(Text("Hoot Hoot!")))
            })
            }
            
            Button(action: {
                self.MusicianIsVisible = true
            }) {
                 Text("MUSICIAN")
                    .font(.title)
        }
            .frame(width: 150, height: 40)
            .padding(20.0)
            .background(
                ZStack {
                    Color(.blue)
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                }
    )
            .foregroundColor(Color.white)
            .cornerRadius(25.0)
            .alert(isPresented: $MusicianIsVisible, content: {
                return Alert(title: Text("The Emotional Oranges"), message: Text("🍊🕶☀️"), dismissButton: .default(Text("Groovy!")))
        })
            
            Button(action: {
                self.FoodIsVisible = true
            }) {
            Text("FOOD")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
            .frame(width: 150, height: 40)
            .padding(20.0)
            .background(
                ZStack {
                    Color(.blue)
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                }
            )
            .foregroundColor(Color.white)
            .cornerRadius(25.0)
            .alert(isPresented: $FoodIsVisible, content: {
                return Alert(title: Text("Enchiladas"), message: Text("🇲🇽🫔🌮"), dismissButton: .default(Text("Yum!")))
        })
            Button(action: {
                self.ColorIsVisible = true
            }) {
            Text("COLOR")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
            .frame(width: 150, height: 40)
            .padding(20.0)
            .background(
                ZStack {
                    Color(.blue)
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                }
            )
            .foregroundColor(Color.white)
            .cornerRadius(25.0)
            .alert(isPresented: $ColorIsVisible, content: {
                return Alert(title: Text("Sage Green"), message: Text("🌿🪴🍃"), dismissButton: .default(Text("Pretty!")))
        })
            Button(action: {
                self.GameIsVisible = true
            }) {
            Text("GAME")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
            .frame(width: 150, height: 40)
            .padding(20.0)
            .background(
                ZStack {
                    Color(.blue)
                    LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                }
            )
            .foregroundColor(Color.white)
            .cornerRadius(25.0)
            .alert(isPresented: $GameIsVisible, content: {
                return Alert(title: Text("Super Mario Galaxy"), message: Text("⭐️🎂👾"), dismissButton: .default(Text("Let's a go!")))
        })
        }
            
        }
            
        }

        
        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


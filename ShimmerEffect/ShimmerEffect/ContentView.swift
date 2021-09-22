//
//  ContentView.swift
//  ShimmerEffect
//
//  Created by AMStudent on 9/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 25) {
        ShimmerText(text: "Gatekeep")
        ShimmerText(text: "Gaslight")
        ShimmerText(text: "Girlboss")
    }
        .preferredColorScheme(.dark)
  }
}

struct ShimmerText: View {
    
    var text: String
    
    @State var animation = false
    
    var body: some View {
        
        ZStack {
            Text(text)
                .font(.system(size: 75, weight: .bold))
                .foregroundColor(Color.white.opacity(0.25))
            
            HStack(spacing: 0) {
                
                ForEach(0..<text.count, id: \.self) { index in
                    
                    Text(String(text[text.index(text.startIndex, offsetBy: index)]))
                        .font(.system(size: 75, weight: .bold))
                        .foregroundColor(randomColor())
                }
            }
            
            .mask (
                
                Rectangle()
                    
                    .fill(
                        
                        LinearGradient(gradient: .init(colors:[Color.white.opacity(0.5), Color.white, Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                            
        )
                    
                    .rotationEffect(.init(degrees: 70))
                    .padding(20)
                
                    .offset(x: -250)
                    .offset(x: animation ? 500 : 0)
                )
            
            .onAppear(perform: {
              withAnimation(Animation.linear(duration: 2.0).repeatForever(autoreverses: false))
              {
                animation.toggle()
              }
               })
            }
        }

func randomColor() -> Color {
    
    let color = UIColor(red: CGFloat.random(in: 0...1), green: .random(in: 0...1), blue: .random(in:0...1), alpha: 1)
    
    return Color(color)
  }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

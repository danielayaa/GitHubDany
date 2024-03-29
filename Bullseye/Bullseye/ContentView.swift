//
//  ContentView.swift
//  Bullseye
//
//  Created by AMStudent on 8/24/21.
//

import SwiftUI

struct ContentView: View {

  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()

  var body: some View {
    ZStack {
        BackgroundView(game: $game)
        VStack {
            InstructionsView(game: $game)
                .padding(.bottom, alertIsVisible ? 0 : 100)
            if alertIsVisible {
                PointsView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                  .transition(.scale)
            } else {
                HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                  .transition(.scale)
              }
        }
            if alertIsVisible {
              SliderView(sliderValue: $sliderValue)
                .transition(.scale)
        }
    }
  }
}

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game

    var body: some View {
        Button(action: {
          withAnimation {
            alertIsVisible = true
          }
        }) {
            Text("HIT ME")
                .bold()
                .font(.title3)
    }
        .padding(20.0)
        .background(
          ZStack {
              Color("Moss Green")
              LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
          }
        )
        .foregroundColor(Color.white)
        .cornerRadius(21.0)
    }
}

struct InstructionsView: View {
  @Binding var game: Game

  var body: some View {
    VStack {
      InstructionText(text: "🐸🌻🍄\nPut the Bullseye as close as you can to")
        .padding(.leading, 20.0)
        .padding(.trailing, 20.0)
      BigNumberText(text: String(game.target))
    }
  }
}

struct SliderView: View {
  @Binding var sliderValue: Double

  var body: some View {
    HStack {
      SliderLabelText(text: "1")
      Slider(value: $sliderValue, in: 1.0...100.0)
      SliderLabelText(text: "100")
    }
    padding()
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 568, height: 320))
    ContentView()
      .preferredColorScheme(.dark)
    ContentView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 568, height: 320))
  }
}

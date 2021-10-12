//
//  ContentView.swift
//  Random Image
//
//  Created by AMStudent on 10/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    let random = arc4random_uniform(3) //returns 0 to 2 randomly

      switch random {
        case 0:
          Image("2")
            //show first image
        case 1:
          Image("3")
            //show second image
        case 2:
          Image("4")
          //show third image
        default:
          Image("1")
            //show third image
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

//
//  ContentView.swift
//  BasicMusicPlayer
//
//  Created by AMStudent on 9/23/21.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State var song = 1
    
    var body: some View {
        VStack {
            HStack {
                Text("Music Player")
                    .font(.system(size: 45))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
            
            HStack {
                Button(action: {
                    audioPlayer.play()
                }) {
                    Text("Play")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    audioPlayer.pause()
                }) {
                    Text("Pause")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
                

                Button(action: {
                    if self.song < 4 {
                        self.song += 1
                        } else {
                            self.song = 1
                        }
                        let sound = Bundle.main.path(forResource: "song\(self.song)", ofType: "mp3")
                        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath:sound!))
                        self.audioPlayer.play()
                }) {
                    Text("Next")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            }
        }
        
    .onAppear {
    let sound = Bundle.main.path(forResource: "song1", ofType: "mp3")
    audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
    }
  }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

}

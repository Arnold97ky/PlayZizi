//
//  ContentView.swift
//  Play
//
//  Created by Consultant on 10/23/22.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                playSound(key: "Zizi")
            }) {
                Text("Play")
                    .foregroundColor(Color.green)
                    .font(.system(size: 32))
            }
        }
    }
    
    
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key, withExtension: "mp3")
        
        //Do nothing if this url is empty
        guard url != nil else {
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            
        } catch {
            print("\(error)")
            
        }
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

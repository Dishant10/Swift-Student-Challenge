//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 12/04/22.
//

import Foundation
import AVFoundation
import SwiftUI

var player:AVAudioPlayer?

func playSound(sound:String,type:String ){
    
    if let path = Bundle.main.path(forResource: sound, ofType: type){
       
        do{
        
        player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
          player?.play()
          }
        catch{
            print("Could not find and play the sound file.")
        }
        
    }
        
   
}

//
//  Camera:MicPrivacyView.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 21/04/22.
//

import SwiftUI

struct Camera_MicPrivacyView: View {
    var body: some View {
        Text("The camera and mic are very integral part of your iPhone,so are they vulnerable to attacks and can be used for malpractices.To ensure proper functionality of apps and minimize the dependency of apps on camera and mic.Your iPhone provides speacial features to do so.")
            .font(.system(size: 16, weight: .medium, design: .rounded))
            .padding()
        HStack(spacing:40){
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(.orange)
            
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(.green)
                
        }
        .padding()
        
        Text("These are two cirular colored indicators.Which you must have seen on top right corner of your screen.An orange indicator shows when an app is currently using your microphone.While an app uses your camera, a green indicator appears.Also, a message appears at the top of Control Center to inform you when an app has recently used either.")
            .font(.system(size: 15, weight: .medium, design: .monospaced))
            .padding()
        Text("\n• Whenever you first install a particular app it requires to give some premissions which usually includes camera and microphone usage.You can easily change permissions within the settings app under that particular app  name.")
            .font(.system(size: 15, weight: .medium, design: .monospaced))
            .padding([.trailing,.leading],10)
        
      
    }
}

struct Camera_MicPrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        Camera_MicPrivacyView()
    }
}

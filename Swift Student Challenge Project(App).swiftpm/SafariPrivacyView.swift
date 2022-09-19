//
//  SafariPrivacyView.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 21/04/22.
//

import SwiftUI

struct SafariPrivacyView: View {
    var body: some View {
        VStack{
            VStack{
                    Image("Safari-Icon")
                        .resizable()
                        .cornerRadius(20)
                        .frame(width: 100, height: 100, alignment: .center)
            }
            .padding()
            Text("Safari is an app which I use almost everytime.I'm sure you must be using it too.This section of the app will let you understand everything like how things work in practical.So let's find out what else it packs for us.")
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .padding()
            Text("• Prevent Cross-Site Tracking: Safari limits third-party cookies(remeber) and data by default.Resulting in less tracking inforamtion availabe for the websites.\n\n• Hide My Email: Also discussed earlier how safari prevents our email addresses from being spammed.\n\n• Fraudulent Website Warning: Safari displays a warning if you’re visiting a suspected phishing website.\n\n• Privacy Preserving Ad Measurement: This prevents websites from viewing your personal information to serve you targeted ads.\n\n• Privacy Report: Safari provides you with your personalised report about your information travelling across the internet,warns you about data leak and password leaks.")
                .font(.system(size: 15, weight: .medium, design: .monospaced))
                .padding()
            
        }
    } 
}

struct SafariPrivacyView_Previews: PreviewProvider {
    static var previews: some View {
        SafariPrivacyView()
    }
}

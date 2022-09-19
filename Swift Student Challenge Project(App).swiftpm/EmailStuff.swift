//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 16/04/22.
//

import Foundation
import SwiftUI

struct EmailStuff:View{
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View{
        VStack{
            
            HStack{
                
                Text("SPAMMING")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                    .padding(.bottom,-5)
                    .padding()
                
                Spacer()
                
                Circle()
                    .frame(width: 6, height: 6)
            }
            .padding()
            
            ScrollView{
                Text("Have you ever wondered?Whenever you enter you're details on a website form.Immediately an email pops up conforming is it really you.Then emails from that particular website or company comes uncontrollably. \n \n ⦿ Spamming is a technique to send or recieve multiple messages for commercial or non-commercial purposes.\n \n⦿ The most common route for spammers is to spam using emails addressses.\n \n ⦿ To stop this email spamming what are the various precautions you can follow :")
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .padding()
                
                Text("Temporary E-mailing")
                    .font(.system(size: 20, weight: .medium, design: .default))
                 
             
                Text("The concept of Temporary email is to secure your real addresss and provide the internet with your fake or user generated address which will allow you to brwose,use,explore without any spamming, advertising and attacking. \n\nTIME FOR AN ACTIVITY.Look at the picture of us below or scroll to view and infer what you understood from it.You don't have to do anything just think and comprehend what can be the reason behind this photo. And once you're done click the 'Next' button to reveal what was my motive behind all this.\n\n              Look at us.")
                    .font(.system(size: 15, weight: .medium, design: .monospaced))
                    .padding(.bottom,-5)
                    .padding()
                
                Image("grandpaDuplicate")
                    .resizable()
                    .frame(width: 200, height: 150, alignment: .center)
                    .padding(.top,-20)
                
            }
            
            HStack{
                
                Button(action: {
                    self.isPresented1.toggle()
                }, label: {
                    ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented1, content: {
                    EncryptionExplainedView()
                })
                
                Button(action: {
                    self.isPresented2.toggle()
                }, label: {
                    ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented2, content: {
                    HideMyEmailView()
                })
            }
        }
        
    }
}


struct EmailStuff_Previews: PreviewProvider {
    static var previews: some View {
        EmailStuff()
    }
}


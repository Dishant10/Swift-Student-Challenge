//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 11/04/22.
//

import Foundation
import SwiftUI
import AVFoundation

struct IntroView:View{
    @State var isPresented1 = false
    @State var isPresented2 = false
    var body: some View{
        
        VStack{
         Text("Hello Kids!!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top,-40)
            
                        HStack{
                Text("This is me grandpa CHIEF.\nI'm here to make you learn and unlearn some internet concepts.\nDo you really think you're safe while watching an online video? Or what about playing online games.? This internet or online world may seem fascinating which it is but as they say every thing comes with an instruction manual and you need to read it.Being your CHIEF and an avid tech lover, it's my responsibility to teach my kids these stuff.So fasten your seatbelts  and get ready as you're going on an adventure.")
                                .font(.system(size: 19, weight: .heavy, design: .rounded))
                                .padding(.top,50)
                    .padding(.leading,10)
//              
               Spacer()
                Image("grandpaOpening2")
                    .resizable()
                    .frame(width: 180, height: 490, alignment: .leading)
            }
            .padding(.bottom,40)
            HStack(spacing:15){
                Button(action: {
                    self.isPresented1.toggle()
                }, label: {
                    ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
                        
                })
                .fullScreenCover(isPresented: $isPresented1) {
                    ContentView()
                }
                Button(action: {
                    self.isPresented2.toggle()
                }, label: {
                    ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
                })
              
                .fullScreenCover(isPresented: $isPresented2) {
                    HttpsIntro()
                }
                
            }
            .padding(.bottom,-70)
            
            
        }
        
    }
   
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

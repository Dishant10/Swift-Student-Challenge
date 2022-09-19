//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 17/04/22.
//

import Foundation
import SwiftUI

struct OnlineTrackingView:View{

    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View{
        VStack{
            
            HStack{
                Text("How do they know me so well?")
                    .font(.system(size: 20, weight: .heavy, design: .default))
                    .padding()
                Spacer()
                Circle()
                    .frame(width: 6, height: 6)
            }
            .padding()
            ScrollView{
                
                HStack{
                    Image("grandpaStressed")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Have ever noticed that when you look at something to buy online, you suddenly start seeing it everywhere else you go on the web. This happens when a third party tracks cookies and other website data to show you ads across various websites.")
                        
                }
                Text("Websites track your moves with something called cookies.These cookies are different than our usual cookies which stores sugar and chocolate which are my favourite by the way.These cookies store our information every time we visit them.That's why before visiting any website for the first time they  tell us to allow cookies to store information,in which the message alerts usually lacks dismiss button.")
                    .padding(.bottom,10)
                    .padding([.leading,.trailing],8)
                Text("But how do they even track you??\n\n⦿ First being cookies - Explained above.\n⦿ Navigation - Apps usually asks to track your location.\n⦿ Camera and mic access - Most apps also uses your    camera and mics to record what you do.\n⦿ Ads - Shows you ads and then judge what more to     show according to which ads you click and visit.")
                    .padding(.bottom,10)
                    .padding([.leading,.trailing],8)
                Text("But the biggest quetion now arises how do you stop your apps from invading your privacy?\n\n A very short answer would be, on your iPhone go to Settings>Privacy and toggle settings according to your needs and privacy.For all of that and more I have a very special Know Your iPhone section, see you there.")
                
            }
            
            HStack{
                
                Button(action: {
                    self.isPresented1.toggle()
                }, label: {
                    ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented1, content: {
                    HideMyEmailView()
                })
                
                Button(action: {
                    self.isPresented2.toggle()
                }, label: {
                    ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented2, content: {
                    DataLeakView()
                })
            }
            
        }
        
        
    }
}

struct OnlineTrackingView_Previews: PreviewProvider {
    static var previews: some View {
        OnlineTrackingView()
    }
}

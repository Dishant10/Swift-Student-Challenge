//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 16/04/22.
//

import Foundation
import SwiftUI

struct HideMyEmailView:View{
    
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View{
        VStack{
         
            HStack{
             
                Text(" I'm hoping you got that right!!!")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                    .padding()
                
                Spacer()
                
                Circle()
                    .frame(width: 6, height: 6)
                
            }
            .padding()
            
            ScrollView{
                
                Text("The reason behind that acitivity was to implement what you learnt about temporary emails.The photo was of me and your grandma.We've been together for more than 50 years now.So people now considers us as one entity. It's been years we've been together so people also talks rubbish about us.But she never let that those talks ever reach to me.She's like a bodyguard to me,whom I love.She acts as my duplicate takes all my pain,tension and lets me leave peacfully. After you're done reading the valuable click next and explore the unexplored.")
                    .padding([.leading,.trailing],10)

                VStack{
                    
                    HStack{
                        Text(" Similarly with temporary emails they are like your duplicates which protects you from the cruel world that wants to trouble you.It acts like your bodyguard.")
                            .padding(.leading,10)
                        Image("emailTrash")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
//                            .padding()
                    }
                    .padding([.bottom,.trailing],10)
                    Text("Services like YOPMAIL which I personally use creates a dump storage on your name or whatever name you may want to give.Whenever you feel like you don't want to share stuff, you can use their created emails and whatever the dump companies send you, that won't basically harm you.")
                        .padding([.leading,.trailing],10)
                    HStack{
                        Image("hideMyEmail")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                        
                        Text("Apple also provides you with something similiar called 'HIDE MY EMAIL' which provides you with similar functionality such as hiding your email for privacy issues and if something important ever came it will be forwarded to your official address.It also very realiable and trustworthy coming strating from apple.")
                            .padding(.trailing,10)
                    }
                    
                }
                
            }
            
        }
        
        HStack{
            
            Button(action: {
                self.isPresented1.toggle()
            }, label: {
                ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
            })
            .fullScreenCover(isPresented: $isPresented1, content: {
                EmailStuff()
            })
            
            Button(action: {
                self.isPresented2.toggle()
            }, label: {
                ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
            })
            .fullScreenCover(isPresented: $isPresented2, content: {
                OnlineTrackingView()
            })
        }
    }
}

struct HideMyEmailView_Previews: PreviewProvider {
    static var previews: some View {
        HideMyEmailView()
    }
}



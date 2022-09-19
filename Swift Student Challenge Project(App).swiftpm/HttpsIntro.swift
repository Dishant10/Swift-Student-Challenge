//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 12/04/22.
//

import Foundation
import SwiftUI
struct HttpsIntro : View{
    
    @State var isPresented1:Bool = false
    @State var isPresented2:Bool = false
    
    var body:some View{
        VStack{
            HStack(){
                
                ImageView(imageName: "http",circleRingColor: .red)
                Spacer(minLength: 20)
                ImageView(imageName: "https",circleRingColor: .green)
                
                Circle()
                    .frame(width: 6, height: 6)
                
            }
            .padding()
            
            
            VStack{
                
                ScrollView{
                    
                    Text("Have you ever wondered what are these prefixes in the search bar, every time you enter a URL to search something off the internet?\nWhat exactly is http and https ?\nDon't you worry grandpa CHIEF is here to answer all of your queries.")
                        .font(.system(size: 19,
                                      weight: .medium,
                                      design: .default))
                        .padding([.leading,.trailing],10)
                        .padding(.bottom,10)
                    Text("HTTP is a protocol that is used to transfer data over the internet.\nMost information that is sent over the Internet, including website content and search requests, uses the HTTP protocol.")
                  
                        .font(.system(size: 19,
                                      weight: .medium,
                                      design: .default))
                        .padding([.leading,.trailing],10)
                        .padding(.bottom,10)
                    Text("But then what's with HTTPS you may ask? \nHTTPS is the bigger brother of HTTP.Being the elder brother it has some resposibilities to take care of, like protecting the family information from your syping neighbours.For example whenever you type your password or simply fill in your details at a website, makes sure that the information reaches in safe hands,if it reaches your goofy neighbour it should be in a packet that makes no sense.\nThis package that makes no sense to your cute spying neighbour has gone through an encryption layer.")
                    //.position(x:220, y: 50)
                        .font(.system(size: 19,
                                      weight: .medium,
                                      design: .default))
                        .padding([.leading,.trailing],10)
                        .padding(.bottom,10)
                   Text("Now,What's encyption grandpa?This is your question right?\nClick on the encryption button to do some activity.")
                        .font(.system(size: 19,
                                      weight: .medium,
                                      design: .monospaced))
                        .padding([.leading,.trailing],10)
                        .padding(.bottom,10)
                        
                    
                    
                }
                HStack{
                    Button ( action: {
                        self.isPresented1.toggle()
                    },label:{
                        ButtonType(title:"Back", textColor: .white, backgroundColor: .green)
                    })
                    .fullScreenCover(isPresented: $isPresented1) {
                        IntroView()
                    }
                    
                    Button(action: {
                        self.isPresented2.toggle()
                        
                    }, label: {
                        ButtonType(title: "Encryption", textColor: .white, backgroundColor: .green)
                    })
                    .fullScreenCover(isPresented: $isPresented2) {
                        EncryptionExplainedView()
                    }
                }
                
            }
            
        }
    }
    
}





struct HttpsIntro_Previews: PreviewProvider {
    static var previews: some View {
        HttpsIntro()
    }
}


//MARK:- Image View Structure

struct ImageView:View{
    
    var imageName:String
    var circleRingColor:Color
    var body: some View{
        
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
            .scaledToFit()
            .clipShape(Circle())
            .overlay(Circle().stroke(circleRingColor,lineWidth: 5))
            .padding()
    }
}

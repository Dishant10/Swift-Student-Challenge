//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 13/04/22.
//

import Foundation
import SwiftUI




struct EncryptionExplainedView:View{
    
    @State var passwordEntered:String = ""
    @State var passwordString:String = ""
    @State var count:Int = 0
    @State var encryptionLayer:Bool = true
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View{
        VStack{
            HStack{
                
                Text("WELCOME TO THE WORLD OF ENCRYPTION!!!")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                    .padding()
                
                Spacer()
                
                Circle()
                    .frame(width: 6, height: 6)
                
            }
            .padding()
            
            ScrollView{
                
                Text("CHIEF  :  Before understanding anything.Let's do an activity. Do as I say.  I hope this will make you understand encryption without me needing to teach you. So are you ready for it ?!?  ")
                    .font(.system(size: 20, weight: .light, design: .rounded))
                    .padding()
                Text("Instructions")
                    .frame(width: 180, height: 50, alignment: .center)
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .padding(.top,-10)
                Text("There is a toggle switch called 'Encryption Layer' which applies an encryption layer whenever the switch is toggled.Below it is a section where you have to enter a password of your choice. Then you have to scroll and compare the results when you hit the return key and save button.This acitvity will allow you to comprehend the differnce between the two results and understand the concept more clearly.")
                    .padding()
                Toggle("Encryption Layer", isOn: $encryptionLayer)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .padding()
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.8)){
                            encryptionLayer.toggle()
                        }
                    }
                SecureField("Password", text: $passwordEntered)
                    .textFieldStyle(.roundedBorder)
                    
                
                // .shadow(radius: 10)
                    .padding()
                
                Button(action: {
                    savePassword()
//                    dismiss
                    count=1
                }, label: {
                    ButtonType(title: "SAVE", textColor: .white, backgroundColor: .blue)
                })
                .padding()
                
                if count == 1 && passwordString != "" && encryptionLayer==false {
                    VStack{
                        
                        Text("So let's see what you've entered ")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .padding(.bottom,10)
                        Text(" Your password : \(passwordString)")
                            .padding()
                        Text("Hahaha I got you!!😂")
                    }
                    
                    .padding()
                    
                }
                else if count==1 && passwordString != "" && encryptionLayer==true{
                    VStack{
                        
                        Text("So let's see what you've entered ")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .padding(.bottom,10)
                        
                        Text("Your password : xhahiuguin#si1@jsingi")
                            .padding()
                        Text("What is this???!???")
                    }
                }
                
                Spacer()
                
                
                
                Text("As you might have noticed the difference between the two results.Without encryption layer the password I got was the exact replica of what you've entered so you now know how safe it is to enter your personal information on websites that does not uses such techniques to ensure to protect your data.Whereas when you enabled the encryption layer what I got what something random to me,which was apparently of no use to me.Thus, make sure to visit those websites that are safe to use and does not provide your information in wrong hands.")
                    .padding()
                
                
            }
                HStack{
                    
                    Button(action: {
                        self.isPresented1.toggle()
                    }, label: {
                        ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
                    })
                    .fullScreenCover(isPresented: $isPresented1, content: {
                        HttpsIntro()
                    })
                    
                    Button(action: {
                        self.isPresented2.toggle()
                    }, label: {
                        ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
                    })
                    .fullScreenCover(isPresented: $isPresented2, content: {
                        EmailStuff()
                    })
                    
                }
                
            
        }
        
        
    }
    
    func savePassword(){
        passwordString=passwordEntered
        passwordEntered=""
    }
    
}


struct EncryptionExplainedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            EncryptionExplainedView()
            
            EncryptionExplainedView()
                .preferredColorScheme(.dark)
        }
    }
}

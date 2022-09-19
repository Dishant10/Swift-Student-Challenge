//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 18/04/22.
//

import Foundation
import SwiftUI

struct DataLeakView:View{
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View{
        VStack{
         
            HStack{
                Text("Data Leak ")
                    .font(.system(size: 20, weight: .heavy, design: .default))
        }
            .padding()
            
            Text("Data Leak is when your private information is out on the internet and exposed for malicious use.\nFor us regular people who loves to live regularly what this means ofcourse we don't have any business information but for us it means the internet knows what shoe brand you wear and that's dangerous.")
                .font(.system(size: 18, weight: .medium, design: .default))
                .padding([.leading,.trailing],10)
            Text("The most common reason for any data leak or threat to your personal information is unsecured personal accounts and unmanaged passwords.")
                .font(.system(size: 18, weight: .medium, design: .default))
                .padding()
            Text("Securing unsecured accounts is a must these days. One way of securing accounts is to use 2FA.\n 2FA stands for Two-factor authentication.Let us see it through an example.")
                .font(.system(size: 18, weight: .medium, design: .default))
                .padding()
            Text("I’m your grandpa but your father is my son and I know all of his passwords but still I can’t login into his accounts because he has two-factor authentication, he’ll receive a message telling him I’m trying to break in.But as a good son he will allow me seeing my name on top.But if it was someone else he would have refused and avoided himself from something serious.")
                .font(.system(size: 18, weight: .medium, design: .default))
                .padding()
          Spacer()
            HStack{
                
                Button(action: {
                    self.isPresented1.toggle()
                }, label: {
                    ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented1, content: {
                    OnlineTrackingView()
                })
                
                Button(action: {
                    self.isPresented2.toggle()
                }, label: {
                    ButtonType(title: "Know Your iPhone", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented2, content: {
                    KnowYouriPhoneView()
                })
                
            }
        }
        
        
    }
}



struct DataLeakView_Previews: PreviewProvider {
    static var previews: some View {
        DataLeakView()
    }
}

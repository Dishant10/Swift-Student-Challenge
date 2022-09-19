//
//  EndView.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 22/04/22.
//

import SwiftUI

struct EndView: View {
    
    @State var isPresented = false
    
    var body: some View {
        VStack{
            Text("    And we're done!!")
                .font(.system(size: 25, weight: .heavy, design: .rounded))
                .padding()
            VStack{
                Image("grandpaHappy")
                    .resizable()
                    .frame(width: 210, height: 200, alignment: .center)
                    .padding()
            }
            Text("I now feel 10 years younger because of my champs who now also are aware of their tech belongings. This was pretty fun right? Now I expect my grandchildren should now fully understand why privacy matters in the online space and how to make sure you're using the right tools,with right knowledge.Share it with your friends too okay?")
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .padding()
            
            
            Text("To Apple: - Because of challenge limitations, which is understandable. In the future I intend to make this app more fun and engaging and will be using more available code and maybe internet access to make learning more fun and engaging. I will also make this app open sourced because of two reasons first being I want more people to contribute on the project because I know there are many diverse ideas, different people have which I can't even think of.Second being I want to give back to community because as every developer I've also used a lot of open source stuff and this is my chance to give back. Thank you for this opportunity.")
                .font(.system(size: 12, weight: .light, design: .monospaced))
                .padding()
            
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
            })
            .fullScreenCover(isPresented: $isPresented, content: {
                KnowYouriPhoneView()
            })
        }
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView()
    }
}

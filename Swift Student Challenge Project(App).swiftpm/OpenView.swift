//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 11/04/22.
//

import Foundation
import SwiftUI

struct OpenView:View {
    var body: some View{
        
            VStack(spacing:45){
                Text("Hello Everyone!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .padding(.top,30)
                // Spacer()
                    
                Text("This is my submission for the WWDC 2022 swift student challenge.The purpose of this project or app is to teach and educate children about the term online/digital privacy.Which we tend to forget teaching our kids.")
                    
                  
                    .padding()
                Text(" While testing the app on my friends and family I found out that more than kids even adults need this app to basically teach themselves about this important issue.Click next to see what are the hurdles and how to fix them eventually.")
                  
                    .padding()
                Text("Note: There is a dot • at top right of some screens which implies that,that screen is/has scrollable content.Supports both light and dark mode but looks best in dark mode.")
                    .font(.system(size: 14, weight: .medium, design: .monospaced))
                    .padding()
            }
    
        
    }
   
}


struct _Previews: PreviewProvider {
    static var previews: some View {
        OpenView()
            .previewDevice("iPhone 12 Pro Max")

    }
}

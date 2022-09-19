//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 12/04/22.
//

import Foundation
import SwiftUI

struct ButtonType:View{
    
    var title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View{
        
        Text(title)
            .bold()
            .frame(width: 160, height: 50, alignment: .center)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(20)
    }
}

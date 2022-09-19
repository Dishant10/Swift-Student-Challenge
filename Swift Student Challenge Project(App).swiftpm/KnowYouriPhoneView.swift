//
//  File.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 20/04/22.
//

import Foundation
import SwiftUI


struct Feature:Identifiable,Hashable{
    var id = UUID()
    let features:String
}


extension Feature{
     static let none:Feature = .init(features: "")
}
struct KnowYouriPhoneView:View{
  
    @State private var isSelected:Feature = .init(features: "Safari")
    
    private let feature:[Feature] = [Feature(features: "Safari"),
                                     Feature(features: "Camera/Mic"),
                                     Feature(features: "Location Services")]
  
    @State var isPresented1 = false
    @State var isPresented2 = false
    
    var body: some View
    {
        VStack{
            HStack{
                Text("Know Your iPhone")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                    .padding()
                
                Spacer()
                Circle()
                    .frame(width: 6, height: 6)
            }
            .padding()
            
            Text("Your iPhone is a much powerful and useful tool than you think.Apart from amazing hardware it packs some amazing peice of software to enhance your software usage while making sure to protect them.Being eldest of the house,I belive in using your tools to the maximum.In this section of the app let us discuss some amazing privacy features that your iPhone provides -")
                .padding()
            Picker("Select Features", selection: $isSelected) {
                ForEach(feature,id: \.self){ elements in
                    Text(elements.features)
                }
            }
            .pickerStyle(.segmented)
            .padding()
                       
            iPhoneFetures(selectedItem: isSelected)
            
            
            HStack{
                
                Button(action: {
                    self.isPresented1.toggle()
                }, label: {
                    ButtonType(title: "Back", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented1, content: {
                    DataLeakView()
                })
                
                Button(action: {
                    self.isPresented2.toggle()
                }, label: {
                    ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
                })
                .fullScreenCover(isPresented: $isPresented2, content: {
                    EndView()
                })
            }
            
        }
        
    }
}


struct iPhoneFetures:View{
    
    var selectedItem:Feature
    
    var body: some View{
        
        switch selectedItem.features{
        case "Safari" :
            FeatureTextView(FeatureName: "Safari")
        case "Camera/Mic" :
            FeatureTextView(FeatureName: "Camera/Mic")
        case "Location Services" :
            FeatureTextView(FeatureName: "Location Services")
        default:
            FeatureTextView(FeatureName: "Nothing")
        }

        
    }
}


struct FeatureTextView:View{
    
    var FeatureName:String
    
    var body: some View{
        ScrollView{
         
            if FeatureName == "Safari"{
                SafariPrivacyView()
            }
            else if FeatureName == "Camera/Mic"{
                Camera_MicPrivacyView()
            }
            else if FeatureName == "Location Services"{
                LocationServicesView()
            }
            
        }
            
    }
}

struct KnowYouriPhoneView_Previews: PreviewProvider {
    static var previews: some View {
        KnowYouriPhoneView()
    }
}

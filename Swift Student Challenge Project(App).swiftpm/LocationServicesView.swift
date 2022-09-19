//
//  LocationServicesView.swift
//  Swift Student Challenge Project(App)
//
//  Created by Dishant Nagpal on 22/04/22.
//

import SwiftUI

struct LocationServicesView: View {
    var body: some View {
        VStack{
            
            Text("Location Services are said to be the most useful and the most dangerous tool ever built that directly contradicts privacy.Using location services is useful for like maps,find my features,family support and much more.But apps have been taking this amazing tool for granting.Seding your exact location to an unneccessary app is not needed.Let's see how can we deal with it.")
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .padding()
            HStack(spacing:70){
                
                Image(systemName: "location")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .aspectRatio(contentMode: .fit)
                Image(systemName: "location.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(.purple)
                Image(systemName: "location.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(.gray)
            }
            .padding()
            
            Text("These similar yet different arrows sign indicates your phone's location services was in use.These arrows might feel familiar because you may have seen it on your top left screen.This indicates the location usage on your iPhone.Reason to include this is to have your attention towards these stuff too.You can learn more about location services in your settings app.Setting>Privacy>Location Services.\n\n • There you will also see individual apps,you can tweak them to your prefences wheather you want those apps to use your location.\n\n• An important catch within settings is to pay attention towards Precise Location setting which allow apps to know your precise location, which you may know would be essential or not.")
                .font(.system(size: 15, weight: .medium, design: .monospaced))
                .padding()
            
        }
        
    }
}

struct LocationServicesView_Previews: PreviewProvider {
    static var previews: some View {
        LocationServicesView()
    }
}

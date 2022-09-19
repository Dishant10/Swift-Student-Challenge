import SwiftUI

struct ContentView: View {
    
   
    @State var isPresented = false
    
    var body: some View {
        VStack{
         
            OpenView()
               
            Spacer()
             Button(action: {
                 self.isPresented.toggle()
                 
             }, label: {
                 ButtonType(title: "Next", textColor: .white, backgroundColor: .green)
             })
             
             .fullScreenCover(isPresented: $isPresented) {
                 IntroView()
             }
            
        }
        
    }
}



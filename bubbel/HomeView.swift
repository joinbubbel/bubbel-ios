//
//  HomeView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/07/2023.
//

import SwiftUI

struct HomeView: View {
    var username: String
   
    
    var body: some View {
        VStack{
            HStack{
                Text("Home")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .padding(.top, -5)
                    .padding(.trailing, 220)
                Image("Discover")
                    .padding(.top, -5)
                Image("Noti")
                    .padding(.top, -5)
                
            }
            .padding(.top, 30)
            
            Text("The Auth works \(username)!")
            Spacer()
                .edgesIgnoringSafeArea(.all)
          
            
        }
    }
    
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(username: "JohnDoe")
    }
}

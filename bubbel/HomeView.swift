//
//  HomeView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/07/2023.
//

import SwiftUI

struct Club {
    var name: String
    var description: String
}



struct HomeView: View {
    var username: String
    
    @State private var clubs: [Club] = []
    
    
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
            
            List(clubs, id: \.name) { club in
                VStack(alignment: .leading) {
                    Text(club.name)
                    
                    Text(club.description)
                    
                    Text("test text")
                }
            }
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

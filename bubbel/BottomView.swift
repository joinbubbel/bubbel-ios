//
//  BottomView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 11/07/2023.
//

import SwiftUI

struct BottomView: View {
    var username: String
    var body: some View {
        VStack{
            
            TabView {
                HomeView(username: username)
                    .tabItem {
                        Image("Home")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                    }
                Clubs()
                    .tabItem {
                        Image("Clubs")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                    }
                
                Select()
                    .tabItem{
                        Image("Add")
                    }
                Message()
                    .badge(5)
                    .tabItem {
                        Image("Message")
                            .renderingMode(.template)
                            .foregroundColor(.blue)
                    }
                
                Profile(username: username)
                    .tabItem {
                        Image("Profile")
                        
                    }
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 400, height: 4)
                .background(Color(red: 0.93, green: 0.94, blue: 0.95))
                .padding(.top, -80)
            
        }
    }
}



struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(username: "JohnDoe")
    }
}

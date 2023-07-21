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
    }
}



struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView(username: "JohnDoe")
    }
}

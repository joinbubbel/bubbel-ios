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
                }
            Clubs()
                .tabItem {
                    Image("Clubs")
                }
            
            Select()
                .tabItem{
                    Image("Add")
                }
            Message()
                .badge(5)
                .tabItem {
                    Image("Message")
                }
            
            Profile()
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

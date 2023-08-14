//
//  Explore.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/08/2023.
//

import SwiftUI

struct Explore: View {
    @State private var search: String = ""
    var username: String
    var displayName: String
    var name: String
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    NavigationLink(destination: BottomView(username: username, displayName: displayName, name: name)){
                        HStack(spacing: 220) {
                            HStack{
                                Image("nav")
                                Text("Explore")
                                    .font(Font.custom("CircularStd-Book", size: 18))
                                    .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                            }
                            Image("Noti")
                        }
                    }
                    .padding(.top, 30)
                    
                    
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 329, height: 50)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.97))
                        .cornerRadius(8)
                    HStack{
                        Image("searchex")
                        TextField("Search", text: $search)
                    }
                    .padding(.leading, 10)
                }
                .padding(.top, 20)
                .frame(width: 329, height: 50)
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore(username: "John DOe", displayName: "John DOe", name: "jonnny")
    }
}

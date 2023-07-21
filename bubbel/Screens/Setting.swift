//
//  Setting.swift
//  bubbel
//
//  Created by Ivoine Strachan on 21/07/2023.
//

import SwiftUI

struct Setting: View {
    var username: String
    var body: some View {
        VStack() {
            ZStack() {
                Rectangle()
                    .foregroundColor(Color(red: 0.96, green: 0.97, blue: 0.97))
                    .frame(width: 329, height: 90)
                    .cornerRadius(15)
                Image("defaultpfp")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 46, height: 46)
                    .cornerRadius(46)
                    .padding(.trailing, 240)
                
                VStack {
                    Text("@\(username)")
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .foregroundColor(.black)
                }
                .padding(.trailing, 120)
                
                VStack{
                    NavigationLink(destination: EditProfile()){
                        Image("Edit")
                            .padding(.leading, 240)
                    }
                }
            }
            .frame(width: 375, height: 90)
            
            HStack{
                Image("Security")
                
                Text("Security")
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .padding(.leading, 10)
            }
            .padding(.trailing, 210)
            
            .padding(.top, 30)
            
            HStack{
                Image("Privacy")
                
                Text("Privacy")
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .padding(.leading, 10)
            }
            .padding(.trailing, 220)
            .padding(.top, 10)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 1)
                .background(Color(red: 0.95, green: 0.96, blue: 0.97))
                .padding(.top, 40)
            VStack{
                Text("My Account")
                    .foregroundColor(Color(red: 0.32, green: 0.38, blue: 0.5))
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .padding(.top, 20)
                    .padding(.trailing, 240)
                
                
            }
            Spacer()
        }
        .padding(.top, 100)
        .edgesIgnoringSafeArea(.all)
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting(username: "JohnDoe")
    }
}

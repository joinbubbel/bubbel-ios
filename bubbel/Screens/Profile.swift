//
//  Profile.swift
//  bubbel
//
//  Created by Ivoine Strachan on 11/07/2023.
//

import SwiftUI

struct Profile: View {
    var username: String
    
    @State private var selection = "Online"
    let status = ["Online", "Do not distub", "Offline"]
    let images = ["online_icon", "dnd_icon", "offline_icon"]
    
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Profile")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .padding(.top, -5)
                        .padding(.trailing, 220)
                    NavigationLink(destination: Setting(username: username)){
                        Image("setting")
                            .padding(.top, -5)
                    }
                    
                }
                .padding(.top, 30)
                HStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 67.16276, height: 67.16276)
                        .background(
                            Image("defaultpfp")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 67.16275787353516, height: 67.16275787353516)
                                .clipped()
                        )
                        .cornerRadius(67.16276)
                    
                    Text("@\(username)")
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .foregroundColor(Color(red: 0.5, green: 0.6, blue: 0.7))
                }
                .padding(.trailing, 180)
                .padding(.top, 10)
                Form {
                    Section {
                        Picker((selection), selection: $selection) {
                            ForEach(0..<status.count, id: \.self) { index in
                                HStack {
                                    Image(images[index])
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Text(status[index])
                                }
                                .tag(status[index])
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.9)
                            .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                    )
                }
                .scrollContentBackground(.hidden)
                .pickerStyle(.menu)
                VStack{
                    Text("My Status")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(Color(red: 0.32, green: 0.38, blue: 0.5))
                }
                .padding(.top, -430)
                .padding(.trailing, 230)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20){
                        Button(action: {}) {
                            Text("😴 Away")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 22)
                                        .stroke(Color.black, lineWidth: 1.6)
                                )
                        }
                        
                        Button(action: {}) {
                            Text("🖥️ At Work")
                                .padding(.horizontal, 20)
                                .padding(.vertical, 10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 22)
                                        .stroke(Color.blue, lineWidth: 1.6)
                                )
                        }
                        ZStack{
                            Button(action: {}) {
                                Text("🎮 Gaming")
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 22)
                                            .stroke(Color.yellow, lineWidth: 1.6)
                                    )
                            }
                            
                            Button(action: {}) {
                                Image("uiplus")
                                .frame(width: 44, height: 44)
                                .background(Color(red: 0, green: 0.34, blue: 1))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 22)
                                .stroke(Color(red: 0, green: 0.34, blue: 1), lineWidth: 8)
                                )
                            }
                        }
                    }
                    .padding(.bottom, 5)
                    .padding(.leading, 35)
                }
                .padding(.top, -400)
                Spacer()
            }
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(username: "JohnDoe")
    }
}

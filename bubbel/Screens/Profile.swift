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
        VStack{
            HStack{
                Text("Profile")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .padding(.top, -5)
                    .padding(.trailing, 220)
                NavigationLink(destination: Setting()){
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
            Spacer()
        }
    }
    
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(username: "JohnDoe")
    }
}

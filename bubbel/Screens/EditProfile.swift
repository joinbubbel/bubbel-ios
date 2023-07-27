//
//  EditProfile.swift
//  bubbel
//
//  Created by Ivoine Strachan on 21/07/2023.
//

import SwiftUI
import PhotosUI

struct EditProfile: View {
    @Binding var username: String
    @State private var displayname: String = ""
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image? = Image("defaultpfp")
    
    var body: some View {
        VStack{
            if let avatarImage = avatarImage {
                avatarImage
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 112, height: 112)
                    .clipped()
                    .cornerRadius(112)
            }
            else {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 112, height: 112)
                    .background(
                        Image("defaultpfp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 112, height: 112)
                            .clipped()
                    )
                    .cornerRadius(112)
                    .padding(.top, 10)
            }
            
            
            
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 325, height: 60)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.9)
                            .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                    )
                HStack{
                    Text("@")
                        .font(Font.custom("CircularStd-Book", size: 20))
                        .foregroundColor(Color(red: 0.75, green: 0.77, blue: 0.8))
                    TextField("", text: $username)
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(.black)
                }
                .padding(.leading, 50)
            }
            .padding(.top, 20)
            
            
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 325, height: 60)
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.9)
                            .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                    )
                HStack{
                    TextField("Display Name", text: $displayname)
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(.black)
                }
                .padding(.leading, 50)
            }
            .padding(.top, 20)
            
            HStack{
                PhotosPicker(selection: $avatarItem, matching: .images) {
                    Label("", image: "pfpupload")
                }
                    .position(x: 225, y: -195)
            }
           
        }
        .onChange(of: avatarItem) { _ in
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        avatarImage = Image(uiImage: uiImage)
                        return
                    }
                }
                
                print("Failed")
            }
        }
        Spacer()
        VStack{
            Button(action: {
                
            }) {
                Text("Save changes")
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 309, height: 56)
                    .background(Color(red: 0, green: 0.34, blue: 1))
                    .cornerRadius(10)
                    .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                
            }
        }
        .padding(.top, -110)
        .toolbar(.hidden, for: .tabBar)
        
    }
    
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile(username: .constant("JohnDoe"))
    }
}

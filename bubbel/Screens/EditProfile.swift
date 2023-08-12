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
    @State private var name: String = ""
    @State private var bio: String = ""
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image? = Image("defaultpfp")
    @State private var showAlert = false
    
    
    @State private var token: String?
    
    func saveChanges() {
        let updatedProfile = InSetUserProfile(
            banner: nil,
            description: bio,
            displayName: displayname,
            name: name,
            pfp: nil,
            token: token ?? "token"
        )
        
        Task {
            do {
                let response = try await bubbelApiSetUserProfile(req: updatedProfile)
                
                print("Profile updated successfully: \(response)")
                showAlert = true
            } catch {
                
                print("Failed to update profile: \(error)")
            }
        }
    }
    
    
    var body: some View {
        VStack{
            VStack{
                NavigationLink(destination: Setting(username: username, displayName: displayname, name: name)){
                    HStack(){
                        Image("nav")
                        Text("Edit Profile")
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                        
                    }
                }
                .padding(.trailing, 250)
                .frame(width: 375, height: 60)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 375, height: 2)
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                
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
                        TextField("Name", text: $name)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
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
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
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
                        TextField("Bio", text: $bio)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
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
                    .position(x: 225, y: -370)
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
                    saveChanges()
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
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Profile Updated"),
                    message: Text("Your profile has been successfully updated."),
                    dismissButton: .default(Text("OK"))
                )
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile(username: .constant("JohnDoe"))
    }
}

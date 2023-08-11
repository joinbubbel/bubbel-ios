//
//  Setting.swift
//  bubbel
//
//  Created by Ivoine Strachan on 21/07/2023.
//

import SwiftUI


struct Setting: View {
    @State private var showingAlert = false
    @State private var logoutConfirmationMessage = ""
    @State private var navigateToLoginView = false
    var username: String
    var body: some View {
        VStack{
            NavigationLink(destination: Profile(username: username)){
                HStack(){
                    Image("nav")
                    Text("Setting")
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
                        NavigationLink(destination: EditProfile(username: Binding.constant(username))){
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
                    HStack{
                        Button(action: {
                            
                            
                        })
                        {
                            Image("swaparrow")
                            Text("Switch to Other Account")
                                .font(Font.custom("CircularStd-Book", size: 16))
                                .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                        }
                    }
                    .padding(.trailing, 140)
                    .padding(.top, 20)
                    
                    HStack{
                        Button(action: {
                            logoutConfirmationMessage = "Logged in as @\(username)"
                            showingAlert = true
                        })
                        {
                            Image("logout")
                            Text("Log Out")
                                .font(Font.custom("CircularStd-Book", size: 16))
                                .foregroundColor(Color(red: 1, green: 0, blue: 0))
                        }
                        .confirmationDialog("", isPresented: $showingAlert){
                            NavigationLink(destination: LoginView()) {
                                Button("Log Out") {
                                    navigateToLoginView = true
                                }
                            }
                            Button("Cancel", role: .cancel) { }
                        } message: {
                            Text(logoutConfirmationMessage)
                        }
                    }
                    .padding(.trailing, 250)
                    .padding(.top, 10)
                    
                }
                Spacer()
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .padding(.top, 30)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting(username: "JohnDoe")
    }
}

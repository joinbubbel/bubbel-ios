//
//  ForgetPassUser.swift
//  bubbel
//
//  Created by Ivoine Strachan on 12/07/2023.
//

import SwiftUI

struct ForgetPassUser: View {
    @State private var username: String = ""
    @FocusState private var keyboardFocused: Bool
    
    
    func Reset(){
        print("password reset")
    }
    var body: some View {
            VStack{
                Text("")
                    .padding(115)
                    .background(
                        Image("Userforget")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    )
                
                    .padding(10)
                VStack{
                    Text("Password")
                        .font(Font.custom("CircularStd-Medium", size: 26))
                        .foregroundColor(.white)
                        .position(x: 82, y: -150)
                    Text("Forgot your password?")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(.white)
                        .position(x: 120, y: -340)
                }
                
                VStack{
                    Text("Username")
                        .font(Font.custom("CircularStd-Book", size: 14))
                        .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                        .padding(.top, -450)
                        .padding(.trailing, 275)
                    HStack {
                        Image("picon")
                        TextField("jonedoe", text: $username)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .font(Font.custom("CircularStd-Book", size: 16))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -420)
                    .padding(.leading, 20)
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(Color.gray)
                        .baselineOffset(10)
                        .focused($keyboardFocused)
                        .font(.system(size: 16))
                        .padding(.trailing, 20)
                        .padding(.leading, 20)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                keyboardFocused = true
                            }
                        }
                        .padding(.top, -390)
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 309, height: 76)
                            .background(Color(red: 0.9, green: 0.92, blue: 0.95))
                            .cornerRadius(10)
                        
                        Text("You will recieve an email with password\nreset link.")
                            .font(Font.custom("CircularStd-Book", size: 14))
                            .foregroundColor(Color(red: 0.58, green: 0.63, blue: 0.73))
                    }
                    .padding(.top, -400)
                    .frame(width: 309, height: 76)
                }
                
                VStack{
                    Button(action: Reset) {
                        Text("Reset Password")
                            .font(Font.custom("CircularStd-Book", size: 16))
                            .foregroundColor(.white)
                            .frame(width: 309, height: 56)
                            .background(Color(red: 0, green: 0.34, blue: 1))
                            .cornerRadius(10)
                            .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                    }
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
                    .padding(.top, -300)
                }
                Spacer()
            }
            .edgesIgnoringSafeArea(.all)
            
        }
    }


struct ForgetPassUser_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPassUser()
    }
}

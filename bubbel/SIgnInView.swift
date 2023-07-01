//
//  SignInView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 01/07/2023.
//

import SwiftUI

struct SignInView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var comfirmpassword: String = ""
    @State private var email: String = ""
    @FocusState private var keyboardFocused: Bool
    
    func SignUp() {
        print("Sign Up Button Works")
    }
    
    var body: some View {
        Text("")
            .padding(50)
            .background(
                Image("LoginBanner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
        
        Text("Username")
            .padding(.trailing, 290)
            .padding(.top, 100)
        TextField("jonedoe", text: $username)
            .padding(.leading, 15)
        
        Rectangle()
            .frame(height: 1.0, alignment: .bottom)
            .foregroundColor(Color.gray)
            .baselineOffset(10)
            .focused($keyboardFocused)
            .font(.system(size: 16))
            .padding(.trailing, 10)
            .padding(.leading, 10)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    keyboardFocused = true
                }
            }
        VStack{
            Text("Email Address")
                .padding(.top, 10)
                .padding(.trailing, 270)
            TextField("johndoe@gmail.com", text: $email)
                .padding(.leading, 15)
            Rectangle()
                .frame(height: 1.0, alignment: .bottom)
                .foregroundColor(Color.gray)
                .baselineOffset(10)
                .padding(.trailing, 10)
                .padding(.leading, 10)
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        keyboardFocused = true
                    }
                }
        }
        
        Text("Password")
            .padding(.top, 10)
            .padding(.trailing, 290)
        TextField("••••••••", text: $password)
            .padding(.leading, 15)
        Rectangle()
            .frame(height: 1.0, alignment: .bottom)
            .foregroundColor(Color.gray)
            .baselineOffset(10)
            .padding(.trailing, 10)
            .padding(.leading, 10)
        
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    keyboardFocused = true
                }
            }
        
        
        Button(action: SignUp){
            Text("Sign Up")
                .foregroundColor(.white)
                .frame(width: 309, height: 56)
                .background(Color(red: 0, green: 0.34, blue: 1))
                .cornerRadius(10)
                .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
            
        }
        
        .padding(30)
        Spacer()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.all)
    }
    
    
    
    struct SignInView_Previews: PreviewProvider {
        static var previews: some View {
            SignInView()
        }
    }
}

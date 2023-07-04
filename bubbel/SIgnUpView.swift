//
//  SignInView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 01/07/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var isUsernameAvailable = true
    @FocusState private var keyboardFocused: Bool
    
    
    func SignUp() {
        guard isValidEmail(email) else {
            print("Invalid email format")
            return
        }
        
        guard isValidPassword(password) else {
            print("Invalid password format")
            return
        }
        
        print("Sign Up successful")
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    private func isValidPassword(_ password: String) -> Bool {
        let passwordRegex = "^(?=.*[A-Za-z])(?=.*\\d).{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
    }
    var body: some View {
        VStack{
            Text("")
                .padding(60)
                .background(
                    Image("SignupBanner")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
            VStack{
                Text("Sign Up")
                    .font(Font.custom("CircularStd-Medium", size: 26))
                    .foregroundColor(.white)
                    .position(x: 80, y: -90)
                Text("Fill in the form to register")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .foregroundColor(.white)
                    .position(x: 135, y: -180)
            }
            Text("Username")
                .font(Font.custom("CircularStd-Book", size: 14))
                .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                .padding(.trailing, 270)
                .padding(.top, -200)
            HStack{
                Image("picon")
                TextField("John Doe", text: $username)
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .foregroundColor(.black)
            }
            .padding(.top, -180)
            .padding(.leading, 20)
            
            Rectangle()
                .frame(height: 1.0, alignment: .bottom)
                .foregroundColor(Color.gray)
                .baselineOffset(10)
                .focused($keyboardFocused)
                .font(.system(size: 16))
                .padding(.trailing, 20)
                .padding(.leading, 20)
                .padding(.top, -155)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        keyboardFocused = true
                    }
                }
            VStack{
                Text("Email Address")
                    .font(Font.custom("CircularStd-Book", size: 14))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                    .padding(.top, 20)
                    .padding(.trailing, 250)
                    .padding(.top, -150)
                HStack{
                    Image("mail")
                    TextField("johndoe@gmail.com", text: $email)
                        .autocapitalization(.none)
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .foregroundColor(.black)
                }
                .padding(.top, -110)
                .padding(.leading, 20)
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray)
                    .baselineOffset(10)
                    .padding(.top, -80)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            keyboardFocused = true
                        }
                    }
            }
            
            Text("Password")
                .font(Font.custom("CircularStd-Book", size: 14))
                .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                .padding(.top, -60)
                .padding(.trailing, 280)
            HStack{
                Image("lock")
                TextField("••••••••", text: $password)
                    .autocapitalization(.none)
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .foregroundColor(.black)
            }
            .padding(.top, -40)
            .padding(.leading, 20)
            Rectangle()
                .frame(height: 1.0, alignment: .bottom)
                .foregroundColor(Color.gray)
                .baselineOffset(10)
                .padding(.trailing, 20)
                .padding(.leading, 20)
                .padding(.top, -10)
            
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                        keyboardFocused = true
                    }
                }
            
            VStack{
                Button(action: SignUp){
                    Text("Sign Up")
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(width: 309, height: 56)
                        .background(Color(red: 0, green: 0.34, blue: 1))
                        .cornerRadius(10)
                        .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                    
                }
                
                Spacer()
            }
            
            .padding(.top, 30)
            
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}



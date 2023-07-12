//
//  ResPassword.swift
//  bubbel
//
//  Created by Ivoine Strachan on 12/07/2023.
//

import SwiftUI

struct ResPassword: View {
    @State private var password: String = ""
    @FocusState private var keyboardFocused:Bool
    
    func ComfirmPass(){
        print("password comfirmed")
    }
    var body: some View {
        VStack{
            Text("")
                .padding(55)
                .background(
                    Image("Userforget")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
                .padding(10)
            
            VStack{
                Text("Reset Password")
                    .font(Font.custom("CircularStd-Medium", size: 26))
                    .foregroundColor(.white)
                    .position(x: 110, y: -100)
                Text("Secure with new password.")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .foregroundColor(.white)
                    .position(x: 130, y: -290)
            }
            
            VStack{
                Text("New Password")
                    .font(Font.custom("CircularStd-Book", size: 14))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                    .padding(.top ,-410)
                    .padding(.trailing, 255)
                HStack{
                    Image("lock")
                    TextField("••••••••", text: $password)
                    
                }
                .padding(.top, -390)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding(.leading, 20)
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray)
                    .focused($keyboardFocused)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            keyboardFocused = true
                        }
                        
                    }
                    .padding(.top, -360)
            }
            
            VStack{
                Text("Comfirm Password")
                    .font(Font.custom("CircularStd-Book", size: 14))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                    .padding(.top ,-330)
                    .padding(.trailing, 230)
                HStack{
                    Image("lock")
                    TextField("••••••••", text: $password)
                    
                }
                .padding(.top, -310)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .padding(.leading, 20)
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(Color.gray)
                    .focused($keyboardFocused)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            keyboardFocused = true
                        }
                        
                    }
                    .padding(.top, -280)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 309, height: 94)
                        .background(Color(red: 0.9, green: 0.92, blue: 0.95))
                        .cornerRadius(10)
                    Text("Set up a password that you can remember.\nPassword should contain at least 8 chacter\n(atleast one uper & lowercase and number.")
                        .font(Font.custom("CircularStd-Book", size: 14))
                        .foregroundColor(Color(red: 0.58, green: 0.63, blue: 0.73))
                }
                .padding(.top, -240)
            }
            Spacer()
            
            Button(action: ComfirmPass){
                HStack{
                    Text("Confirm Changes")
                }
                .font(Font.custom("CircularStd-Book", size: 16))
                .foregroundColor(.white)
                .frame(width: 309, height: 56)
                .background(Color(red: 0, green: 0.34, blue: 1))
                .cornerRadius(10)
                .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                .padding(.bottom, 20)
                
            }
            }
        }
    }


struct ResPassword_Previews: PreviewProvider {
    static var previews: some View {
        ResPassword()
    }
}

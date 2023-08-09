//
//  ResVerification.swift
//  bubbel
//
//  Created by Ivoine Strachan on 12/07/2023.
//

import SwiftUI

struct ResVerification: View {
    @State private var resverifi: String = ""
    @FocusState private var keyboardFocused: Bool
    
    func ResendCode() {
        print("code sent!")
    }
    var body: some View {
        NavigationView{
            VStack{
                Text("")
                    .padding(120)
                    .background(
                        Image("VerifyBanner")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    )
                
                VStack{
                    Text("Verification")
                        .font(Font.custom("CircularStd-Medium", size: 26))
                        .foregroundColor(.white)
                        .position(x: 90, y: -150)
                    Text("Check email inbox for OTP.")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(.white)
                        .position(x: 130, y: -280)
                }
                VStack{
                    HStack {
                        Image("verifi")
                        TextField("Verification Code", text: $resverifi)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .font(Font.custom("CircularStd-Book", size: 16))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -320)
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
                        .padding(.top, -290)
                }
                
                Spacer()
                Button(action: ResendCode){
                    HStack{
                        Image("resend")
                        Text("Resend")
                    }
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 309, height: 56)
                    .background(Color(red: 0, green: 0.34, blue: 1))
                    .cornerRadius(10)
                    .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                    .padding(.bottom, 50)
                    
                }
                NavigationLink(destination: ForgetPassUser()) {
                    HStack{
                        Image("Back")
                        Text("Re-enter Username")
                    }
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                    .padding(.bottom, 90)
                    
                    
                }
                
                
                
                
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            
        }
    }
}


struct ResVerification_Previews: PreviewProvider {
    static var previews: some View {
        ResVerification()
    }
}

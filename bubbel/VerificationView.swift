//
//  VerificationView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct VerificationView: View {
    @State private var verify: String = ""
    @State private var popup = true
    @State private var emailupdates = false
    @FocusState private var keyboardFocused: Bool
    @State private var verificationCodeSent = false
    @State private var isVerified = false
    
    
    func Resend() {
        print("Verification Sent!")
    }
    func verifyUser() async {
        do {
            let userID = 139
            let requestData = InVerifyAccount(code: verify, userID: userID)
            
            let verificationResult = try await bubbelApiVerifyAccount(req: requestData)
            
            // Check if the verification was successful
            if verificationResult.error == nil {
                print("User verified successfully!")
                isVerified = true
            } else {
                print("Verification error: \(verificationResult.error!)")
            }
        } catch {
            print("API Error: \(error)")
        }
    }
    
    
    var body: some View {
            VStack{
                Text("")
                    .padding(60)
                    .background(
                        Image("VerifyBanner")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    )
                Text("Verification")
                    .font(Font.custom("CircularStd-Medium", size: 26))
                    .foregroundColor(.white)
                    .position(x:90 , y: -90)
                Text("Check email inbox for OTP.")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .foregroundColor(.white)
                    .position(x: 130 , y: -90)
                HStack{
                    Image("verifi")
                    TextField("Verification Code", text: $verify)
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .foregroundColor(.black)
                }
                .textContentType(.oneTimeCode)
                .keyboardType(.numberPad)
                .padding(.leading, 20)
                .padding(.top, 10)
                
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
                
                Toggle("Pop-up notifications", isOn: $popup)
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .foregroundColor(.black)
                    .padding(.top, 40)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                Toggle("Email updates", isOn: $emailupdates)
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .foregroundColor(.black)
                    .padding(.top, 20)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 309, height: 94)
                        .background(Color(red: 0.9, green: 0.92, blue: 0.95))
                        .cornerRadius(10)
                    Text("If you’re opting out of email updates you\nwill still recieve rescue emails, notification\nof login from new device and T&C updates")
                        .font(Font.custom("CircularStd-Book", size: 14))
                    
                    
                    .foregroundColor(Color(red: 0.58, green: 0.63, blue: 0.73))            }
                .frame(width: 320, height: 94)
                .padding(.top, 30)
                Button(action: {
                    Task {
                        await verifyUser()
                    }
                }) {
                    HStack {
                        Image("resend")
                        Text(verificationCodeSent ? "Verify" : "Resend")
                    }
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .foregroundColor(.white)
                    .frame(width: 309, height: 56)
                    .background(Color(red: 0, green: 0.34, blue: 1))
                    .cornerRadius(10)
                    .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                    .padding(.top, 30)
                    .onChange(of: verificationCodeSent) { newValue in
                        if newValue {
                            
                            isVerified = false
                        }
                    }
                }
                VStack{
                    NavigationLink(destination: OnboardingView(), isActive: $isVerified) {
                        EmptyView()
                    }
                    NavigationLink(destination: SignUpView()) {
                        HStack{
                            Image("Back")
                            Text("Change Email")
                        }
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                        .padding(50)
                        
                    }
                }
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                .edgesIgnoringSafeArea(.all)
            }
            
            Spacer()
            
        }
    }





struct VerificationView_Previews: PreviewProvider {
    static var previews: some View {
        VerificationView()
    }
}

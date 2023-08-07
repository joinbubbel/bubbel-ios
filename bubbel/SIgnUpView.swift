import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var isUsernameAvailable = true
    @FocusState private var keyboardFocused: Bool
    @State private var verificationCode: String = ""
    @State private var verificationEmailSent = false
    @State private var showVerificationView = false
 
    
    @State private var errorMessage: String = ""
    
    @State private var userID: Int?
    
    
    
    private var usernamePlaceholder: String {
        return errorMessage.isEmpty ? "John Doe" : errorMessage
    }
    
    private var emailPlaceholder: String {
        return errorMessage.isEmpty ? "johndoe@gmail.com" : errorMessage
    }
    
    private var passwordPlaceholder: String {
        return errorMessage.isEmpty ? "••••••••" : errorMessage
    }
    var isSignUpButtonDisabled: Bool {
        return username.isEmpty || email.isEmpty || password.isEmpty
    }
    
    func isUsernameAvailable() async -> Bool {
        do {
            let createUserRequest = InCreateUser(email: email, password: password, username: username)
            let createUserResponse = try await bubbelApiCreateUser(req: createUserRequest)
            return createUserResponse.error?.type != .emailOrUsernametaken
        } catch {
            return true
        }
    }
    
    
    func createUser() async {
        do {
            let createUserRequest = InCreateUser(email: email, password: password, username: username)
            let createUserResponse = try await bubbelApiCreateUser(req: createUserRequest)

            if let error = createUserResponse.error {
               
            } else {
                if let userID = createUserResponse.res?.userID {
                    self.userID = userID
                    // Send verification email here
                    let sendVerifyRequest = InSendVerify(userID: userID)
                    let sendVerifyResponse = try await bubbelApiSendVerify(req: sendVerifyRequest)
                    if let error = sendVerifyResponse.error {
                        print("email didnt send")
                    } else {
                        self.showVerificationView = true
                    }
                } else {
                    print("Unexpected error: No user ID returned")
                }
            }
        } catch {
            errorMessage = "An unexpected error occurred."
            print("Error: \(error)")
        }
    }



    

    
    
    
    var body: some View {
        NavigationView{
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
                    TextField(usernamePlaceholder, text: $username)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .foregroundColor(keyboardFocused ? .black : (errorMessage.isEmpty ? .black : .red))
                        .onTapGesture {
                            if !errorMessage.isEmpty {
                                errorMessage = ""
                            }
                        }
                }
                .padding(.top, -180)
                .padding(.leading, 20)
                
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(errorMessage.isEmpty ? Color.gray : Color.red)
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
                        TextField(emailPlaceholder, text: $email)
                            .autocapitalization(.none)
                            .disableAutocorrection(true)
                            .font(Font.custom("CircularStd-Book", size: 16))
                            .foregroundColor(keyboardFocused ? .black : (errorMessage.isEmpty ? .black : .red))
                            .onTapGesture {
                                if !errorMessage.isEmpty {
                                    errorMessage = ""
                                }
                            }
                        
                    }
                    .padding(.top, -110)
                    .padding(.leading, 20)
                    Rectangle()
                        .frame(height: 1.0, alignment: .bottom)
                        .foregroundColor(errorMessage.isEmpty ? Color.gray : Color.red)
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
                    .disableAutocorrection(true)
                    .font(Font.custom("CircularStd-Book", size: 14))
                    .foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
                    .padding(.top, -60)
                    .padding(.trailing, 280)
                HStack{
                    Image("lock")
                    TextField(passwordPlaceholder, text: $password)
                        .autocapitalization(.none)
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .foregroundColor(keyboardFocused ? .black : (errorMessage.isEmpty ? .black : .red))
                        .onTapGesture {
                            if !errorMessage.isEmpty {
                                errorMessage = ""
                            }
                        }
                    
                }
                .padding(.top, -40)
                .padding(.leading, 20)
                Rectangle()
                    .frame(height: 1.0, alignment: .bottom)
                    .foregroundColor(errorMessage.isEmpty ? Color.gray : Color.red)
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
                    Button(action: {
                        Task {
                            if username.isEmpty || email.isEmpty || password.isEmpty {
                                errorMessage = "Please fill in all the fields."
                            } else if await isUsernameAvailable() {
                                await createUser()
                                showVerificationView = true // Set to true after user creation
                            } else {
                                errorMessage = "Username or Email is already taken."
                            }
                        }
                    }) {
                        Text("Sign Up")
                            .font(Font.custom("CircularStd-Book", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 309, height: 56)
                            .background(Color(red: 0, green: 0.34, blue: 1))
                            .cornerRadius(10)
                            .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                        
                    }
                    
                    
                    NavigationLink(
                        destination: VerificationView(),
                        isActive: $showVerificationView,
                        label: {
                            EmptyView()
                        }
                    )
                    
                    
                    VStack{
                        Text("Log In")
                            .foregroundColor(.blue)
                            .font(Font.custom("CircularStd-Book", size: 16))
                    }
                    
                    .padding(.top, 40)
                    
                    Spacer()
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                }
                
                .padding(.top, 40)
                
                
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
                .edgesIgnoringSafeArea(.all)
            }
            
            .task {
                await createUser()
            }
            
        }
    }
}


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}




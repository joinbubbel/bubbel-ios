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
    
    func createUser() async {
        do {
            let createUserRequest = InCreateUser(email: email, password: password, username: username)
            let createUserResponse = try await bubbelApiCreateUser(req: createUserRequest, bath: bubbelBathDev)
            
            if let error = createUserResponse.error {
                if let ierror = error.ierror {
                    print("CreateUserError: Got internal error: \(ierror)")
                } else {
                    print("CreateUserError: \(error.type.rawValue)")
                    if error.type == .sendVerification {
                        print("Verification email failed to send. Please try again later.")
                    }
                }
            } else {
                await sendVerificationEmail()
            }
        } catch {
            print("Error: \(error)")
        }
        
        func sendVerificationEmail() async {
            let verifyAccountRequest = InVerifyAccount(code: verificationCode, userID: 112)
            
            do {
                let verifyAccountResponse = try await bubbelApiVerifyAccount(req: verifyAccountRequest)
                
                if let error = verifyAccountResponse.error {
                    if let ierror = error.ierror {
                        print("VerifyAccountError: Got internal error: \(ierror)")
                    } else {
                        print("VerifyAccountError: \(error.type)")
                    }
                } else {
                    // Verification email sent successfully
                    verificationEmailSent = true
                    DispatchQueue.main.async {
                        showVerificationView = true
                    }
                }
            } catch {
                print("Error: \(error)")
            }
        }
    }
    
    
    
    func bubbelApiCreateUser(req: InCreateUser, bath: String) async throws -> ResCreateUser {
        let encoder = JSONEncoder()
        let json = try encoder.encode(req)
        let jsonString = String(data: json, encoding: .utf8) ?? ""
        
        let url = URL(string: bath + "/api/create_user")!
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = json
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        let (dataString) = String(data: data, encoding: .utf8) ?? ""
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let result = try decoder.decode(ResCreateUser.self, from: data)
        return result
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
                    TextField("John Doe", text: $username)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
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
                            .disableAutocorrection(true)
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
                    .disableAutocorrection(true)
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
                    Button(action: {
                        Task {
                            await createUser()
                            showVerificationView = true
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
        }
        .task {
            await createUser()
        }
        
    }
    
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}



import SwiftUI

struct InCreateUser: Codable {
    var email: String
    var username: String
    var password: String
}

struct CreateUserError: Codable {
    var type: String
    var ierror: String?
}

struct ResCreateUser: Codable {
    var error: CreateUserError?
}

struct InAuthUser: Codable {
    var username: String
    var password: String
}

struct AuthUserError: Codable {
    var type: String
    var ierror: String?
    var dberror: CreateUserError?
}

struct ResAuthUser: Codable {
    var error: AuthUserError?
    var token: String?
    var username: String?
    var email: String?
}

struct InDeauthUser: Codable {
    var token: String
}

struct SignUpView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""
    @State private var isUsernameAvailable = true
    @FocusState private var keyboardFocused: Bool
    
    
    func SignUp() async {
        guard isValidEmail(email) else {
            print("Invalid email format")
            return
        }
        
        guard isValidPassword(password) else {
            print("Invalid password format")
            return
        }
        
        let createUserRequest = InCreateUser(email: email, username: username, password: password)
        do {
            let response = try await createUserAPIRequest(request: createUserRequest)
            // Handle the response
            if let error = response.error {
                // Handle CreateUserError
                if let ierror = error.ierror {
                    print("CreateUserError: Got internal error: \(ierror)")
                } else {
                    print("CreateUserError: \(error.type)")
                }
            } else {
                // User creation success
                print("User created successfully")
            }
        } catch {
            // Handle the error
            print("Error: \(error)")
        }
    }
    
    func createUserAPIRequest(request: InCreateUser) async throws -> ResCreateUser {
        let encoder = JSONEncoder()
        let json = try encoder.encode(request)
        let jsonString = String(data: json, encoding: .utf8) ?? ""
        print(jsonString)
        
        let url = URL(string: bubbelBathDev + "/api/create_user")!
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = json
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        let (dataString) = String(data: data, encoding: .utf8) ?? ""
        print(dataString)
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let result = try decoder.decode(ResCreateUser.self, from: data)
        return result
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
    
    let bubbelBathDev = "https://bubbel-bath.onrender.com"
    
    enum BubbelError: Error {
        case fetchError
    }
    
    func bubbelApiCreateUser(bath: String, req: InCreateUser) async throws -> ResCreateUser {
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
    
    func bubbelApiAuthUser(bath: String, req: InAuthUser) async throws -> ResAuthUser {
        let encoder = JSONEncoder()
        let json = try encoder.encode(req)
        let jsonString = String(data: json, encoding: .utf8) ?? ""
        
        let url = URL(string: bath + "/api/auth_user")!
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = json
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        let (dataString) = String(data: data, encoding: .utf8) ?? ""
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let result = try decoder.decode(ResAuthUser.self, from: data)
        return result
    }
    
    func bubbelApiDeauthUser(bath: String, req: InDeauthUser) async throws {
        let encoder = JSONEncoder()
        let json = try encoder.encode(req)
        let jsonString = String(data: json, encoding: .utf8) ?? ""
        
        let url = URL(string: bath + "/api/deauth_user")!
        var urlRequest = URLRequest(url: url)
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        urlRequest.httpBody = json
        
        try await URLSession.shared.data(for: urlRequest)
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
                            await SignUp()
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
                await SignUp()
            }
            
        }
    
    
    struct SignUpView_Previews: PreviewProvider {
        static var previews: some View {
            SignUpView()
        }
    }
}



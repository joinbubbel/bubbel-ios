import SwiftUI

struct User: Codable {
	let username: String
	let displayName: String
	let name: String
}


struct LoginView: View {
	@State private var username: String = ""
	@State private var displayName: String = ""
	@State private var name: String = ""
	@State private var password: String = ""
	@FocusState private var keyboardFocused: Bool
	@State private var isLoggedIn: Bool = false
	@State private var errorMessage: String = ""
	
	/*
	 init(){
	 for family in UIFont.familyNames {
	 print(family)
	 
	 for names in UIFont.fontNames(forFamilyName: family){
	 print("== \(names)")
	 }
	 }
	 }
	 */
	
	private var storedLoginStatus: Bool {
		UserDefaults.standard.bool(forKey: "isLoggedIn")
	}
	
	
	private func setLoginStatus(_ isLoggedIn: Bool) {
		UserDefaults.standard.set(isLoggedIn, forKey: "isLoggedIn")
	}
	
	private var storedUser: User? {
		guard let userData = UserDefaults.standard.data(forKey: "user"),
			  let user = try? JSONDecoder().decode(User.self, from: userData)
		else {
			return nil
		}
		return user
	}
	private func setLoggedInUser(_ user: User) {
		if let encodedData = try? JSONEncoder().encode(user) {
			UserDefaults.standard.set(encodedData, forKey: "user")
		}
	}
	func logOut() {
		UserDefaults.standard.removeObject(forKey: "user")
		isLoggedIn = false
		setLoginStatus(false)
	}

	
	func logInAsync() async {
		await LogIn()
	}
	func LogIn() async {
		let user = User(username: username, displayName: displayName, name: name)

		 do {
			 guard !username.isEmpty && !password.isEmpty else {
				 errorMessage = "Please enter both username and password."
				 return
			 }

			 let authUserRequest = InAuthUser(password: password, username: username)

			 let response = try await authUserAPIRequest(request: authUserRequest)

			 if let error = response.error {
				 errorMessage = "AuthUserError: \(error.type)"
				 isLoggedIn = false
			 } else {
				 print("Login successful")
				 isLoggedIn = true
				 errorMessage = ""
				 setLoginStatus(true)
				 setLoggedInUser(user)
			 }
		 } catch {
			 errorMessage = "Error: \(error)"
			 isLoggedIn = false
		 }

		 if !isLoggedIn {
			 DispatchQueue.main.async {
				 username = ""
				 password = ""
			 }
		 }
	 }
	
	

	func authUserAPIRequest(request: InAuthUser) async throws -> ResAuthUser {
		let encoder = JSONEncoder()
		let json = try encoder.encode(request)
		let jsonString = String(data: json, encoding: .utf8) ?? ""
		print(jsonString)
		
		let url = URL(string: "https://api.joinbubbel.com/api/auth_user")!
		var urlRequest = URLRequest(url: url)
		urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
		urlRequest.httpMethod = "POST"
		urlRequest.httpBody = json
		
		let (data, response) = try await URLSession.shared.data(for: urlRequest)
		let (dataString) = String(data: data, encoding: .utf8) ?? ""
		print(dataString)
		
		let decoder = JSONDecoder()
		decoder.keyDecodingStrategy = .convertFromSnakeCase
		let result = try decoder.decode(ResAuthUser.self, from: data)
		return result
	}
	
	func ForgetPass(){
		print("Forget Password button clicked")
	}
	var body: some View {
		NavigationView {
			if isLoggedIn || storedUser != nil {
				BottomView(username: storedUser?.username ?? "", displayName: storedUser?.displayName ?? "", name: storedUser?.name ?? "")
					.onAppear {
						isLoggedIn = true
					}
					.onDisappear {
						isLoggedIn = false
					}
			} else {
				VStack {
					Text("")
						.padding(110)
						.background(
							Image("LoginBanner")
								.resizable()
								.aspectRatio(contentMode: .fit)
								.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
						)
						.padding(10)
					VStack{
						Text("Login")
							.font(Font.custom("CircularStd-Medium", size: 26))
							.foregroundColor(.white)
							.position(x: 50, y: -150)
						Text("Welcome Back!")
							.font(Font.custom("CircularStd-Book", size: 18))
							.foregroundColor(.white)
							.position(x: 80, y: -120)
					}
					VStack{
						Text("Username")
							.font(Font.custom("CircularStd-Book", size: 14))
							.foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
							.padding(.top, -20)
							.padding(.trailing, 275)
						HStack {
							Image("picon")
							TextField("jonedoe", text: $username)
								.disableAutocorrection(true)
								.autocapitalization(.none)
								.font(Font.custom("CircularStd-Book", size: 16))
								.foregroundColor(.black)
						}
						.padding(.top, 5)
						.padding(.leading, 20)
						Rectangle()
							.frame(height: 1.0, alignment: .bottom)
							.foregroundColor(errorMessage.isEmpty ? Color.gray : Color.red)
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
							.padding(.top, 5)
					}
					Text("Password")
						.font(Font.custom("CircularStd-Book", size: 14))
						.foregroundColor(Color(red: 0.39, green: 0.45, blue: 0.58))
						.padding(.top ,10)
						.padding(.trailing, 285)
					HStack{
						Image("lock")
						TextField("••••••••", text: $password)
						
					}
					.disableAutocorrection(true)
					.autocapitalization(.none)
					.padding(.leading, 20)
					Rectangle()
						.frame(height: 1.0, alignment: .bottom)
						.foregroundColor(errorMessage.isEmpty ? Color.gray : Color.red)
						.focused($keyboardFocused)
						.padding(.trailing, 20)
						.padding(.leading, 20)
					
						.onAppear {
							DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
								keyboardFocused = true
							}
						}
					VStack{
						Button(action: { Task { await logInAsync() } }) {
							Text("Log In")
								.font(Font.custom("CircularStd-Book", size: 16))
								.foregroundColor(.white)
								.frame(width: 309, height: 56)
								.background(Color(red: 0, green: 0.34, blue: 1))
								.cornerRadius(10)
								.shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
						}
					}
					
					.padding(50)
					
					
					VStack{
						Text("Forget Password?")
							.padding(.top, 30)
					}
					Spacer()
						.navigationBarHidden(true)
						.navigationBarBackButtonHidden(true)
					
					
					
					NavigationLink(destination: SignUpView()) {
						Text("Sign Up")
							.font(Font.custom("CircularStd-Book", size: 16))
							.multilineTextAlignment(.center)
							.foregroundColor(Color(red: 0, green: 0.34, blue: 1))
							.padding(70)
						
					}
					
				}
				.edgesIgnoringSafeArea(.all)
			}
		}
	}
	
	struct LoginView_Previews: PreviewProvider {
		static var previews: some View {
			LoginView()
		}
	}
}




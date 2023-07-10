import SwiftUI


struct LoginView: View {
	@State private var username: String = ""
	@State private var password: String = ""
	@FocusState private var keyboardFocused: Bool
	
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
	
	func LogIn() {
		Task {
			do {
				guard !username.isEmpty && !password.isEmpty else {
					print("Please enter both username and password.")
					return
				}
				
				let authUserRequest = InAuthUser(username: username, password: password)
				let response = try await authUserAPIRequest(request: authUserRequest)
				if let error = response.error {
					
					if let dberror = error.dberror {
						print("AuthUserError: \(dberror.type), \(dberror.uerror ?? "")")
					} else {
						print("AuthUserError: \(error.type)")
					}
				} else {
					// Login success
					print("Login successful")
				}
			} catch {
				// Handle the error
				print("Error: \(error)")
			}
		}
	}
	
	func authUserAPIRequest(request: InAuthUser) async throws -> ResAuthUser {
		let encoder = JSONEncoder()
		let json = try encoder.encode(request)
		let jsonString = String(data: json, encoding: .utf8) ?? ""
		print(jsonString)
		
		let url = URL(string: "https://bubbel-bath.onrender.com/api/auth_user")! 
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
					.foregroundColor(Color.gray)
					.focused($keyboardFocused)
					.padding(.trailing, 20)
					.padding(.leading, 20)
				
					.onAppear {
						DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
							keyboardFocused = true
						}
					}
				VStack{
					Button(action: LogIn){
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
	
	struct LoginView_Previews: PreviewProvider {
		static var previews: some View {
			LoginView()
		}
	}
}

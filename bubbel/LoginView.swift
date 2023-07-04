import SwiftUI


struct LoginView: View {
	@State private var username: String = ""
	@State private var password: String = ""
	@FocusState private var keyboardFocused: Bool
	
	init(){
		for family in UIFont.familyNames {
			print(family)
			
			for names in UIFont.fontNames(forFamilyName: family){
				print("== \(names)")
			}
		}
	}
	
	func LogIn(){
		print("Login Button Works")
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
				
				
					
				NavigationLink(destination: SignInView()) {
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
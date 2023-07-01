import SwiftUI


struct ContentView: View {
	@State private var username: String = ""
	@State private var password: String = ""
	@FocusState private var keyboardFocused: Bool
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
					.padding(105)
					.background(
						Image("LoginBanner")
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
					)
					.padding(10)
				Text("Username")
					.padding(.trailing, 290)
				TextField("jonedoe", text: $username)
					.padding(.leading, 15)
				Rectangle()
					.frame(height: 1.0, alignment: .bottom)
					.foregroundColor(Color.gray)
					.baselineOffset(10)
					.focused($keyboardFocused)
					.font(.system(size: 16))
					.padding(.trailing, 10)
					.padding(.leading, 10)
					.onAppear {
						DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
							keyboardFocused = true
						}
					}
				Text("Password")
					.padding(.top ,10)
					.padding(.trailing, 290)
				TextField("••••••••", text: $password)
					.padding(.leading, 15)
				Rectangle()
					.frame(height: 1.0, alignment: .bottom)
					.foregroundColor(Color.gray)
					.focused($keyboardFocused)
				
					.onAppear {
						DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
							keyboardFocused = true
						}
					}
					.padding(8)
				Button(action: LogIn){
					Text("Log In")
						.foregroundColor(.white)
						.frame(width: 309, height: 56)
						.background(Color(red: 0, green: 0.34, blue: 1))
						.cornerRadius(10)
						.shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
					
				}
				
				.padding(30)
				
				Spacer()
				
					.padding(30)
				NavigationLink(destination: SignInView()) {
					Text("Sign Up")
						.font(Font.custom("Circular Std", size: 16))
						.multilineTextAlignment(.center)
						.foregroundColor(Color(red: 0, green: 0.34, blue: 1))
						.padding(50)
					
				}
				
			}
			.edgesIgnoringSafeArea(.all)
		}
	}
	
	struct ContentView_Previews: PreviewProvider {
		static var previews: some View {
			ContentView()
		}
	}
}

//
//  ContentView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 30/06/2023.
//

import SwiftUI


struct ContentView: View {
	@State private var username: String = ""
	@State private var password: String = ""
	@FocusState private var keyboardFocused: Bool
	var body: some View {
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
				.padding(.trailing, 290)
			TextField("••••••••", text: $password)
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
			Spacer()
		}
		.edgesIgnoringSafeArea(.all)
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

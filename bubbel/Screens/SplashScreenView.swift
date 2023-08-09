//
//  SplashScreenView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 03/07/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    var body: some View {
        if isActive{
            LoginView()
        }
        else{
            VStack{
                Image("Logo")
                    .frame(width: 475, height: 812)
                    .background(Color(red: 0, green: 0.34, blue: 1))
                
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }}}
        }
    }
    
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}

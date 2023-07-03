//
//  Onboard1.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct Onboard1: View {
    var body: some View {
        VStack{
            Text("")
                .padding(170)
                .background(
                    Image("Onboard1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    
                )
            Text("Bubbel")
                .font(Font.custom("CircularStd-Book", size: 18))
                .foregroundColor(.white)
                .position(x:  50, y: -300)
            Text("A new club experience")
                .position(x:  165, y: -320)
                .font(Font.custom("CircularStd-Medium", size: 28))
                .foregroundColor(.white)
            
            Text("Host online events and participate\nin new sport trends and party")
                .position(x:  170, y: -350)
                .font(Font.custom("CircularStd-Book", size: 20))
                .foregroundColor(.white)
            
            Text("Team-up yourself globally")
                .font(Font.custom("CircularStd-Medium", size: 20))
                .foregroundColor(.black)
                .padding(.top, -200)
                .padding(.trailing, 90)
            
            Text("With bubbel clubs can earn global\nrecognisation. Promote your club\nonline, connect new members and\nbe the new sensation in media.")
                .padding(.top, -170)
                .padding(.trailing, 10)
                .font(Font.custom("CircularStd-Book", size: 20))
                .foregroundColor(Color(red: 0.48, green: 0.52, blue: 0.6))
            Spacer()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Onboard1_Previews: PreviewProvider {
    static var previews: some View {
        Onboard1()
    }
}

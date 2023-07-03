//
//  Onboard3.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct Onboard3: View {
    var body: some View {
        VStack{
            Text("")
                .padding(145)
                .background(
                    Image("Onboard3")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    
                )
            Text("Keep upto date with trends")
                .font(Font.custom("CircularStd-Medium", size: 20))
                .foregroundColor(.black)
                .padding(.top, 120)
                .padding(.trailing, 70)
            
            Text("Get the latest updates from your\nfavorite teams and clubs. News at\na glance and watch top trending\nshows of the week.")
                .padding(.top, 10)
                .padding(.trailing, 10)
                .font(Font.custom("CircularStd-Book", size: 20))
                .foregroundColor(Color(red: 0.48, green: 0.52, blue: 0.6))
            
            Spacer()
                .edgesIgnoringSafeArea(.all)
            
        }
    }
}

struct Onboard3_Previews: PreviewProvider {
    static var previews: some View {
        Onboard3()
    }
}

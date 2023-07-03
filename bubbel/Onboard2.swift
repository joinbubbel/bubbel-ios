//
//  Onboard2.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct Onboard2: View {
    var body: some View {
        VStack{
            Text("")
                .padding(145)
                .background(
                    Image("Onboard2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    
                )
            Text("Bubbel")
                .font(Font.custom("CircularStd-Book", size: 18))
                .foregroundColor(.white)
                .position(x:  50, y: -250)
            Text("A new club experience")
                .position(x:  165, y: -270)
                .font(Font.custom("CircularStd-Medium", size: 28))
                .foregroundColor(.white)
            
            Text("Host online events and participate\nin new sport trends and party")
                .position(x:  170, y: -310)
                .font(Font.custom("CircularStd-Book", size: 20))
                .foregroundColor(.white)
            
            Text("Find your desire clubs")
                .font(Font.custom("CircularStd-Medium", size: 20))
                .foregroundColor(.black)
                .padding(.top, -180)
                .padding(.trailing, 130)
            
            Text("Explore trending clubs around the\nworld. Come join your friend parties\nand jam with new friends.")
                .padding(.top, -150)
                .padding(.trailing, 10)
                .font(Font.custom("CircularStd-Book", size: 20))
                .foregroundColor(Color(red: 0.48, green: 0.52, blue: 0.6))
            Spacer()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Onboard2_Previews: PreviewProvider {
    static var previews: some View {
        Onboard2()
    }
}

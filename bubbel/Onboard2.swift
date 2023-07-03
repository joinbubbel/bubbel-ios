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
            Text("Find your desire clubs")
                .font(Font.custom("CircularStd-Medium", size: 20))
                .foregroundColor(.black)
                .padding(.top, 120)
                .padding(.trailing, 110)
            
            Text("Explore trending clubs around the\nworld. Conjoin your friend parties\nand jam with new friends.")
                .padding(.top, 10)
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

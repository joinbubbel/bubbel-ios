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
            Text("Team-up yourself globally")
                .font(
                    Font.custom("Circular Std", size: 20)
                        .weight(.medium)
                )
                .foregroundColor(.black)
                .padding(.top, 80)
                .padding(.trailing, 90)
            
            Text("With bubbel clubs can earn global\nrecognisation. Promote your club\nonline, connect new members and\nbe the new sensation in media.")
                .padding(.top, 10)
                .padding(.trailing, 10)
                .font(Font.custom("Circular Std", size: 20))
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

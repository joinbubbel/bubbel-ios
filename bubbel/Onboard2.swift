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

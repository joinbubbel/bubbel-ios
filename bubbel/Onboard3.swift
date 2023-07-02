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

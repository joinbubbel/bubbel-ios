//
//  Onboard1.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct Onboard1: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("")
                    .padding(170)
                    .background(
                        Image("Onboard1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                           
                    )
                Spacer()
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct Onboard1_Previews: PreviewProvider {
    static var previews: some View {
        Onboard1()
    }
}

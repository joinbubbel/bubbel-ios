//
//  HomeView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/07/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        HStack{
            Text("Home")
                .padding(.bottom, 680)
                .padding(.trailing, 220)
            Image("Discover")
                .padding(.bottom, 680)
            Image("Noti")
            .padding(.bottom, 680)
               
        }
        Spacer()
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

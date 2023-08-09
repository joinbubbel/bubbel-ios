//
//  Explore.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/08/2023.
//

import SwiftUI

struct Explore: View {
    @State private var search: String = ""
    var body: some View {
        NavigationView{
            VStack{
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 329, height: 50)
                        .background(Color(red: 0.96, green: 0.96, blue: 0.97))
                        .cornerRadius(8)
                    HStack{
                        Image("searchex")
                        TextField("Search", text: $search)
                    }
                    .padding(.leading, 10)
                }
                .padding(.top, 20)
                .frame(width: 329, height: 50)
                
                Spacer()
            }
        }
    }
}

struct Explore_Previews: PreviewProvider {
    static var previews: some View {
        Explore()
    }
}

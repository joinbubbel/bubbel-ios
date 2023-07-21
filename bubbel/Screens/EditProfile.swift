//
//  EditProfile.swift
//  bubbel
//
//  Created by Ivoine Strachan on 21/07/2023.
//

import SwiftUI


struct EditProfile: View {
    @State private var user: String = ""
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 112, height: 112)
                .background(
                    Image("defaultpfp")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 112, height: 112)
                        .clipped()
                )
                .cornerRadius(112)
                .padding(.top, 10)
            
            VStack{
                HStack{
                    Text("@")
                        .font(Font.custom("CircularStd-Book", size: 20))
                        .foregroundColor(Color(red: 0.75, green: 0.77, blue: 0.8))
                    TextField("", text: $user)
                }
            }
            .padding(.top, 20)
            
            Image("pfpupload")
                .position(x: 225, y: -70)
        }
        Spacer()
    }
    
}

struct EditProfile_Previews: PreviewProvider {
    static var previews: some View {
        EditProfile()
    }
}

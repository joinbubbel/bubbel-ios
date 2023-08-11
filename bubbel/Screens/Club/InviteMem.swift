//
//  InviteMem.swift
//  bubbel
//
//  Created by Ivoine Strachan on 11/08/2023.
//

import SwiftUI

struct InviteMem: View {
    var body: some View {
        VStack{
            NavigationLink(destination: Connections()){
                HStack(){
                    Image("nav")
                    Text("Invite Members")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                    
                }
                
            }
            .padding(.trailing, 200)
            .frame(width: 375, height: 60)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 2)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            Spacer()
            VStack{
                
                Button(action: {
                    
                }){
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 309, height: 60)
                            .background(Color(red: 0, green: 0.34, blue: 1))
                            .cornerRadius(10)
                            .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                        HStack(spacing: 160){
                            Text("Create Club")
                                .font(Font.custom("CircularStd-Book", size: 16))
                                .foregroundColor(.white)
                            Image("clubright")
                        }
                    }
                }
                
                
            }
            .padding(.top,-100)
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct InviteMem_Previews: PreviewProvider {
    static var previews: some View {
        InviteMem()
    }
}

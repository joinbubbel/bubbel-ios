//
//  Clubs.swift
//  bubbel
//
//  Created by Ivoine Strachan on 11/07/2023.
//

import SwiftUI

struct Clubs: View {
    var body: some View {
        NavigationView{
            VStack{
                
                HStack{
                    Text("Clubs")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .padding(.top, -5)
                        .padding(.trailing, 220)
                    
                    Image("Discover")
                    
                        .padding(.top, -5)
                    Image("Noti")
                        .padding(.top, -5)
                    
                }
                .padding(.top, 30)
                Button(action: {
                    
                }){
                    
                    NavigationLink(destination: CreateClub()){
                        ZStack{
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 325, height: 60)
                                .background(Color(red: 0.9, green: 0.95, blue: 1))
                                .cornerRadius(10)
                            HStack{
                                Text("Create new club")
                                    .font(Font.custom("CircularStd-Book", size: 16))
                                    .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                                    .padding(.trailing, 120)
                                Image("plus")
                            }
                            
                        }
                        .padding(.top, 50)
                        
                    }
                    
                }
                Spacer()
                    .edgesIgnoringSafeArea(.all)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Clubs_Previews: PreviewProvider {
    static var previews: some View {
        Clubs()
    }
}

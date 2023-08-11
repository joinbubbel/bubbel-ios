//
//  CreateClub.swift
//  bubbel
//
//  Created by Ivoine Strachan on 10/08/2023.
//

import SwiftUI

struct CreateClub: View {
    @State private var clubname: String = ""
    @State private var clubbio: String = ""
    @State private var selection = "Education"
    let status = ["Education","Sports", "Entertainment", "Art & Culture"]
    var body: some View {
        VStack{
            VStack{
                NavigationLink(destination: Clubs()){
                    HStack(){
                        Image("nav")
                        Text("Create new club")
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                        
                    }
                    
                }
                .padding(.trailing, 200)
                .frame(width: 375, height: 80)
                
                Image("clubdefault")
                    .resizable()
                    .frame(width: 400.99988, height: 191)
                Image("clubphoto")
                    .position(x: 75, y: -30)
                HStack{
                    Text("Upload banner")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(Color(red: 0.07, green: 0.06, blue: 0.15))
                    Image("upload")
                }
                .position(x: 270, y: -300)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 325, height: 60)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: 0.9)
                                .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                        )
                    HStack{
                        TextField("Club name", text: $clubname)
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(.black)
                    }
                    .padding(.leading, 50)
                }
                .padding(.top, -240)
                
                Form {
                    Section {
                        Picker((selection), selection: $selection) {
                            ForEach(0..<status.count, id: \.self) { index in
                                VStack {
                                    
                                    Text(status[index])
                                }
                                .tag(status[index])
                            }
                        }
                    }
                    .frame(width: 325, height: 60)
                    
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .inset(by: 0.9)
                            .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                    )
                }
                .padding(.top, -220)
                .scrollContentBackground(.hidden)
                .pickerStyle(.menu)
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 325, height: 120)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: 0.9)
                                .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                        )
                    HStack{
                        TextField("Club bio", text: $clubbio)
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(.black)
                    }
                    .padding(.top, -40)
                    .padding(.leading, 50)
                }
                .padding(.top, -240)
                
                VStack{
                  
                    Button(action: {
                        
                    }){
                        NavigationLink(destination: Connections()){
                        ZStack{
                            
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 309, height: 60)
                                .background(Color(red: 0, green: 0.34, blue: 1))
                                .cornerRadius(10)
                                .shadow(color: Color(red: 0, green: 0.34, blue: 1).opacity(0.35), radius: 20, x: 0, y: 20)
                            HStack(spacing: 170){
                                Text("Continue")
                                    .font(Font.custom("CircularStd-Book", size: 16))
                                    .foregroundColor(.white)
                                Image("clubright")
                            }
                        }
                        }
                    }
                    
                }
                .padding(.top, -80)
                Spacer()
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct CreateClub_Previews: PreviewProvider {
    static var previews: some View {
        CreateClub()
    }
}

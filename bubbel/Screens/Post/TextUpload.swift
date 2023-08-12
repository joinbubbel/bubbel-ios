//
//  TextPost.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/08/2023.
//

import SwiftUI

struct TextUpload: View {
    @State private var text: String = ""
    @State private var link: String = ""
    @State private var link2: String = ""
    @State private var comments = true
    
    @State private var linkRows: [String] = [""]
    var body: some View {
        VStack{
            NavigationLink(destination: BottomView(username: "John Doe", displayName: "John Doe", name: "jonny")){
                HStack(){
                    Image("nav")
                    Text("Post")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                    
                }
            }
            .padding(.trailing, 260)
            .frame(width: 375, height: 60)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 2)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            
            VStack{
                TextField("Write somethig about the post...", text:$text, axis: .vertical)
                    .frame(width: 329, height: 70)
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 1)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                .padding(.top, 100)
            
            VStack{
                Text("Share links")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .foregroundColor(Color(red: 0.32, green: 0.38, blue: 0.5))
                    .padding(.trailing, 230)
                    .padding(.top, 20)
                
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
                        Image("link")
                        TextField("joinbubbel.com", text:$link)
                        
                    }
                    .frame(width: 325, height: 0)
                    .padding(.leading, 30)
                    
                }
                .padding(.top, 10)
            }
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 259, height: 60)
                        .cornerRadius(12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .inset(by: 0.9)
                                .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
                        )
                    HStack{
                        Image("link")
                        TextField("link 2", text:$link2)
                    }
                            .padding(.leading, 10)
                            .frame(width: 259, height: 60)
                   
                }
                Button(action: {
                    
                }) {
                ZStack{
                   
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 50, height: 50)
                        .background(Color(red: 0, green: 0.33, blue: 1))
                        .cornerRadius(12)
                 
                   
                        Image("pluswhite")
                            .frame(width: 24, height: 24)
                    }
                }
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 1)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                .padding(.top, 40)
            
            VStack{
                
                Toggle("Users can comment", isOn: $comments)
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .frame(width: 329, height: 60)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                
                
            }
            Spacer()
        }
        
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct TextUpload_Previews: PreviewProvider {
    static var previews: some View {
        TextUpload()
    }
}

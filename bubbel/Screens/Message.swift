//
//  Message.swift
//  bubbel
//
//  Created by Ivoine Strachan on 11/07/2023.
//

import SwiftUI

struct Message: View {
    var body: some View {
        VStack{
            HStack{
                Text("Message")
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
                VStack{
                    Image("story")
                        .padding(.trailing, 275)
                        .padding(.top, 20)
                }
            }
            Text("You")
                .font(Font.custom("CircularStd-Book", size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
                .padding(.trailing, 280)
                .padding(.top, 5)
            
            HStack{
                Button(action:{
                    
                }){
                    Text("Chats")
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                }
                Button(action: {
                    
                })
                {
                    Text("Calls")
                        .font(Font.custom("CircularStd-Book", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                }
                .padding(.leading, 30)
                Image("search")
                    .padding(.leading, 180)
            }
            .padding(.trailing, 20)
            .padding(.top, 10)
            
            Spacer()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message()
    }
}

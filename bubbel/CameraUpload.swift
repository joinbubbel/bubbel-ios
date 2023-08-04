//
//  CameraUpload.swift
//  bubbel
//
//  Created by Ivoine Strachan on 03/08/2023.
//

import SwiftUI

struct CameraUpload: View {
    var username: String
    var body: some View {
        
        VStack{
            HStack(spacing: 240){
                Text("Post")
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .background(.blue)
                    .cornerRadius(5)
                NavigationLink(destination: BottomView(username: username)){
                    Image("exit")
                }
            }
            .padding(.top,  -50)
            ZStack(alignment: .bottom){
                ZStack{
                    HStack(spacing: 50){
                        Button(action: {
                        }){
                            Image("flash")
                        }
                        Button(action: {
                            
                        }){
                            Image("takep")
                        }
                        Button(action: {
                            
                        }){
                            Image("camswitch")
                        }
                    }
                    ZStack{
                        HStack{
                            Text("Filters")
                                .foregroundColor(.white)
                                .font(Font.custom("CircularStd-Book", size: 18))
                        }
                        
                    }
                    .padding(.top, 100)
                    .padding(.trailing, 280)
                }
                .padding(.top, 500)
                
                
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
           
            .edgesIgnoringSafeArea(.all)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

struct CameraUpload_Previews: PreviewProvider {
    static var previews: some View {
        CameraUpload(username: "John Doe")
    }
}

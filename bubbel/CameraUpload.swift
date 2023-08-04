//
//  CameraUpload.swift
//  bubbel
//
//  Created by Ivoine Strachan on 03/08/2023.
//

import SwiftUI

struct CameraUpload: View {
    var body: some View {
        VStack{
            HStack(spacing: 250){
                Text("Post")
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                    .background(.blue)
                Image("exit")
            }
            .padding(.top,  -50)
            ZStack(alignment: .bottom){
                ZStack{
                    HStack(spacing: 50){
                        Image("flash")
                        Image("takep")
                        Image("camswitch")
                    }
                    ZStack{
                        HStack{
                            Text("Filters")
                                .font(Font.custom("CircularStd-Book", size: 16))
                        }
                        
                    }
                    .padding(.top, 120)
                    .padding(.trailing, 280)
                }
                .padding(.top, 520)
                
                
            }
            .preferredColorScheme(.dark)
        }
    }
}

struct CameraUpload_Previews: PreviewProvider {
    static var previews: some View {
        CameraUpload()
    }
}

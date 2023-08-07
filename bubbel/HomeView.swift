//
//  HomeView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/07/2023.
//

import SwiftUI

struct Club {
    var name: String
}

struct HomeView: View {
    var username: String
    
    @State private var clubs: [Club] = [
        Club(name: "Urmom Club"),
    ]
    
    
    var body: some View {
        VStack{
            HStack{
                Text("Home")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .padding(.top, -5)
                    .padding(.trailing, 220)
                Image("Discover")
                    .padding(.top, -5)
                Image("Noti")
                    .padding(.top, -5)
                
            }
            .padding(.top, 30)
            
            VStack{
                ForEach(clubs, id: \.name) { club in
                    ZStack{
                        VStack(alignment: .leading) {
                            Text(club.name)
                        }
                        .padding(.trailing, 200)
                        VStack{
                            Button(action: {
                                print("Button clicked!")
                                
                            })
                            {
                                Text("Join")
                                    .font(Font.custom("CircularStd-Book", size: 16))
                                    .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                            }
                            .padding(.horizontal, 18)
                            .padding(.vertical, 10)
                            .background(Color(red: 0.9, green: 0.95, blue: 1))
                            .cornerRadius(49)
                            .padding(.leading, 230)
                        }
                        
                        
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 375, height: 1)
                        .background(
                            EllipticalGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.93, green: 0.93, blue: 0.93), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.93, green: 0.93, blue: 0.93).opacity(0), location: 1.00),
                                ],
                                center: UnitPoint(x: 0.5, y: 0.5)
                            )
                        )
                        .padding(.top, -20)
                }
                .padding(.top, 40)
            }
            
            Spacer()
                .edgesIgnoringSafeArea(.all)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
    
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(username: "JohnDoe")
    }
}

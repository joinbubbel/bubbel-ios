//
//  HomeView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/07/2023.
//

import SwiftUI

struct Club {
    var name: String
    var id: Int
}

struct HomeView: View {
    var username: String
    
    @State private var token: String?
    
    @State private var clubID: Int
    
    @State private var clubName: String = ""
    
    
    init(username: String, clubID: Int) {
        self.username = username
        self.clubID = clubID
    }
    func fetchClubName() {
        let inGetClubProfile = InGetClubProfile(clubID: clubID , token: token)
        
        Task {
            do {
                let result = try await bubbelApiGetClubProfile(req: inGetClubProfile)
                if let clubProfile = result.res {
                    clubName = clubProfile.name
                }
            } catch {
                print("Error fetching club profile: \(error)")
            }
        }
    }
    
    
    
    var body: some View {
        VStack{
            HStack{
                Text("Home")
                    .font(Font.custom("CircularStd-Book", size: 18))
                    .padding(.top, -5)
                    .padding(.trailing, 220)
                NavigationLink(destination: Explore()){
                    Image("Discover")
                }
                .padding(.top, -5)
                Image("Noti")
                    .padding(.top, -5)
                
            }
            .padding(.top, 30)
            
            
            NavigationLink(destination: ClubProfile(clubName: clubName, username: username)){
                VStack{
                    
                    ZStack{
                        VStack(alignment: .leading) {
                            Text(clubName)
                                .font(Font.custom("CircularStd-Book", size: 18))
                                .foregroundColor(.black)
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
                        .padding(.top, 60)
                }
                .padding(.top, 40)
            }
            
            Spacer()
                .edgesIgnoringSafeArea(.all)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
        .onAppear {
            fetchClubName()
        }
    }
    
}





struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(username: "JohnDoe", clubID: 123)
    }
}

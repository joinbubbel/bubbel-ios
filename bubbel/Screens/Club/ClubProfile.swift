//
//  ClubProfile.swift
//  bubbel
//
//  Created by Ivoine Strachan on 10/08/2023.
//

import SwiftUI



struct ClubProfile: View {
    var clubName: String
    var username: String
    
    
    @State private var club: Club? = nil
    
    @State private var token: String?
    
    func fetchClubDetails() {
        let inGetClubProfile = InGetClubProfile(clubID: 1, token: token)
        
        Task {
            do {
                let result = try await bubbelApiGetClubProfile(req: inGetClubProfile)
                if let clubProfile = result.res {
                    
                    club = Club(name: clubProfile.name, id: 1)
                }
            } catch {
                print("Error fetching club profile: \(error)")
            }
        }
    }
    
    
    
    var body: some View {
        VStack {
            VStack{
                NavigationLink(destination: BottomView(username: username)){
                    HStack(){
                        Image("nav")
                        Text("Go Back")
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                        
                    }
                    
                }
            }
            .padding(.trailing, 240)
            .frame(width: 375, height: 80)
            if let club = club {
                Text(club.name)
            } else {
                Text("Loading club details...")
                    .onAppear {
                        fetchClubDetails()
                    }
            }
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct ClubProfile_Previews: PreviewProvider {
    static var previews: some View {
        ClubProfile(clubName: "Sample Club", username: "John Doe")
    }
}

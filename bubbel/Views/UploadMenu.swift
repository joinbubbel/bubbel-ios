//
//  UploadMenu.swift
//  bubbel
//
//  Created by Ivoine Strachan on 04/08/2023.
//

import SwiftUI

struct UploadMenu: View {
    var username: String
    var displayName: String
    var name: String
    @State private var offsets = (top: CGFloat.zero, middle: CGFloat.zero, bottom: CGFloat.zero)
    @State private var offset: CGFloat = .zero
    @State private var lastOffset: CGFloat = .zero
    @State private var showMenu = true
    
    var body: some View {
        if showMenu {
            NavigationView{
                ZStack{
                    GeometryReader { geometry in
                        VStack (spacing: 30) {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 40, height: 4)
                                .background(Color(red: 0.87, green: 0.89, blue: 0.94))
                                .cornerRadius(4)
                            HStack{
                                NavigationLink(destination: CameraUpload(username: username, displayName: displayName, name: name)){
                                    Image("cam")
                                }
                                NavigationLink(destination: ImageUpload(username: username, displayName: displayName, name: name)){
                                    Image("imge")
                                }
                                NavigationLink(destination: PollsUpload(username: username, displayName: displayName, name: name)){
                                    Image("poll")
                                }
                                NavigationLink(destination: TextUpload(username: username, displayName: displayName, name: name)){
                                    Image("text")
                                }
                            }
                            Spacer()
                        }
                        .padding()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: min(self.offset, 30) ))
                        .shadow(color: Color.black.opacity(0.4), radius: 10, x: 0, y: 5)
                        .animation(.interactiveSpring())
                        .onAppear {
                            self.offsets = (
                                top: .zero,
                                middle: geometry.size.height / 2,
                                bottom: geometry.size.height * 3 / 4 + 70
                            )
                            self.offset = self.offsets.bottom
                            self.lastOffset = self.offset
                        }
                        .offset(y: self.offset)
                        
                    }
                    
                    .edgesIgnoringSafeArea(.all)
                }
                .toolbar(.hidden, for: .tabBar)
            }
        }
    }
}

struct UploadMenu_Previews: PreviewProvider {
    static var previews: some View {
        UploadMenu(username: "John Doe", displayName: "John Doe", name: "jonny")
    }
}

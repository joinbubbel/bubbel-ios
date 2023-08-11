//
//  Connections.swift
//  bubbel
//
//  Created by Ivoine Strachan on 11/08/2023.
//

import SwiftUI

struct Connections: View {
    @State private var link: String = ""
    @State private var faviconImage: Image? = nil
    
    private func fetchFavicon() {
        if let url = URL(string: link),
           let faviconURL = URL(string: "\(url.scheme ?? "https")://\(url.host ?? "")/favicon.ico") {
            
            let task = URLSession.shared.dataTask(with: faviconURL) { data, response, error in
                if let data = data, let uiImage = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.faviconImage = Image(uiImage: uiImage)
                    }
                } else {
                    print("Error fetching favicon: \(error?.localizedDescription ?? "Unknown error")")
                }
            }
            
            task.resume()
        }
    }
    var body: some View {
        VStack{
            NavigationLink(destination: CreateClub()){
                HStack(){
                    Image("nav")
                    Text("Connections")
                        .font(Font.custom("CircularStd-Book", size: 18))
                        .foregroundColor(Color(red: 0.2, green: 0.22, blue: 0.25))
                    
                }
                
            }
            .padding(.trailing, 200)
            .frame(width: 375, height: 60)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 2)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            
            Text("Connect your social media & websites")
                .padding(.top, 20)
                .padding(.trailing, 50)
                .font(Font.custom("CircularStd-Book", size: 16))
                .foregroundColor(.black)
            
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
                        if let faviconImage = faviconImage {
                            faviconImage
                                .resizable()
                                .frame(width: 24, height: 24)
                                .cornerRadius(4)
                        } else {
                            Image("globe")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .cornerRadius(4)
                        }
                        TextField("Enter URL", text: $link, onEditingChanged: { editing in
                            if !editing && !link.lowercased().hasPrefix("https://") {
                                link = "https://" + link
                            }
                        })
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                        .onChange(of: link) { newValue in
                            if !link.lowercased().hasPrefix("https://") {
                                link = "https://" + link
                            }
                            fetchFavicon()
                        }
                        .onAppear {
                            if !link.lowercased().hasPrefix("https://") {
                                link = "https://"
                            }
                        }
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
            Spacer()
            VStack{
                
                Button(action: {
                    
                }){
                    
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
            .padding(.top,-100)
        }
        .toolbar(.hidden, for: .tabBar)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct Connections_Previews: PreviewProvider {
    static var previews: some View {
        Connections()
    }
}

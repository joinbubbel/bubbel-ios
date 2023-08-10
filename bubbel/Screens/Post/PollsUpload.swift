//
//  PollsUpload.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/08/2023.
//

import SwiftUI
import PhotosUI

struct IdentifiableImage: Identifiable {
    let id = UUID()
    let image: Image
}

struct CustomPickerStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 0.9)
                    .stroke(Color(red: 0.92, green: 0.93, blue: 0.94), lineWidth: 1.8)
            )
            .foregroundColor(.clear)
            .frame(width: 100, height: 100)
            .cornerRadius(12)
    }
}

struct PollsUpload: View {
    @State private var posttext: String = ""
    @State private var text: String = ""
    @State private var PostItem: PhotosPickerItem?
    @State private var postImages: [IdentifiableImage] = []
    @State private var postItems: [PhotosPickerItem] = []
    @State private var link: String = ""
    @State private var link2: String = ""
    @State private var comments = true
    
    @State private var selectedDays = 0
    @State private var selectedHours = 0
    @State private var selectedMinutes = 0
    
    let daysRange = 0..<31
    let hoursRange = 0..<24
    let minutesRange = 0..<60
    var body: some View {
        ScrollView(){
            VStack{
                VStack {
                    VStack {
                        NavigationLink(destination: BottomView(username: "John Doe")) {
                            HStack {
                                Image("nav")
                                Text("Polls")
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
                    }
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 329, height: 100)
                            .background(Color(red: 0.89, green: 0.95, blue: 1))
                            .cornerRadius(15)
                        HStack {
                            if !postImages.isEmpty {
                                ForEach(postImages) { identifiableImage in
                                    identifiableImage.image
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 329, height: 411.25)
                                        .clipped()
                                        .cornerRadius(15)
                                        .onTapGesture {
                                            // tapping on an image
                                        }
                                }
                            } else {
                                Image("attach")
                                PhotosPicker("Attach a file", selection: $postItems, matching: .any(of: [.images]))
                                    .font(Font.custom("CircularStd-Book", size: 18))
                                    .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                            }
                        }
                        
                        .onChange(of: postItems) { _ in
                            Task {
                                for item in postItems {
                                    if let data = try? await item.loadTransferable(type: Data.self) {
                                        if let uiImage = UIImage(data: data) {
                                            let image = Image(uiImage: uiImage)
                                            postImages.append(IdentifiableImage(image: image))
                                        } else {
                                            print("Failed to load image")
                                        }
                                    }
                                }
                            }
                        }
                    }
                    .padding(.top, 50)
                    VStack{
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
                                TextField("Choice 1", text:$link)
                                
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
                                TextField("Choice 2", text:$link2)
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
                        TextField("Write somethig about the post...", text:$text, axis: .vertical)
                            .frame(width: 329, height: 90)
                    }
                    VStack{
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 375, height: 1)
                            .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                            .padding(.top, 40)
                        
                        Text("Poll Duration")
                            .frame(width: 400, height: 100)
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(Color(red: 0.32, green: 0.38, blue: 0.5))
                            .padding(.trailing, 230)
                        HStack {
                            Picker("Days", selection: $selectedDays) {
                                ForEach(daysRange, id: \.self) { day in
                                    Text("\(day)")
                                }
                            }
                            .modifier(CustomPickerStyle())
                            .pickerStyle(WheelPickerStyle())
                            
                            Picker("Hours", selection: $selectedHours) {
                                ForEach(hoursRange, id: \.self) { hour in
                                    Text("\(hour)")
                                }
                            }
                            .modifier(CustomPickerStyle())
                            .pickerStyle(WheelPickerStyle())
                            
                            Picker("Minutes", selection: $selectedMinutes) {
                                ForEach(minutesRange, id: \.self) { minute in
                                    Text("\(minute)")
                                    
                                }
                            }
                            .modifier(CustomPickerStyle())
                            .pickerStyle(WheelPickerStyle())
                            
                            
                        }
                    }
                    .frame(width: 420, height: 200)
                    
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


struct PollsUpload_Previews: PreviewProvider {
    static var previews: some View {
        PollsUpload()
    }
}

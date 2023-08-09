//
//  ImageUpload.swift
//  bubbel
//
//  Created by Ivoine Strachan on 09/08/2023.
//

import SwiftUI
import PhotosUI
import _AVKit_SwiftUI

func saveDataAsTemporaryFile(data: Data) -> URL? {
    let temporaryDirectory = FileManager.default.temporaryDirectory
    let temporaryFileURL = temporaryDirectory.appendingPathComponent("tempVideo.mp4")
    
    do {
        try data.write(to: temporaryFileURL)
        return temporaryFileURL
    } catch {
        print("Error saving temporary video file: \(error)")
        return nil
    }
}
struct ImageUpload: View {
    
    @State private var posttext: String = ""
    @State private var comments = true
    @State private var PostItem: PhotosPickerItem?
    @State private var PostImage: Image?
    @State private var PostVideoPlayer: AVPlayer?
    @State private var sliderValue: Float = 0.0
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 329, height: 100)
                    .background(Color(red: 0.89, green: 0.95, blue: 1))
                    .cornerRadius(15)
                HStack {
                    if PostImage != nil {
                        PostImage?
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 329, height: 411.25)
                            .clipped()
                            .cornerRadius(15)
                            .onTapGesture {
                                // tapping
                            }
                    } else if let player = PostVideoPlayer {
                        VStack{
                            VideoPlayer(player: player)
                                .onAppear() {
                                    player.play()
                                }
                                .disabled(true)
                                .frame(width: 329, height: 411.25)
                                .cornerRadius(15)
                                .onTapGesture {
                                    // tapping
                                }
                            HStack{
                                Controls(player: $PostVideoPlayer)
                                Slider(value: $sliderValue, in: 0...1, step: 0.01)
                                    .padding(.horizontal, 20)
                                    .accentColor(Color(red: 0, green: 0.34, blue: 1))
                                    .foregroundColor(Color.red)
                                    .onChange(of: sliderValue) { newValue in
                                        if let player = PostVideoPlayer {
                                            let newTime = Double(newValue) * player.currentItem!.duration.seconds
                                            player.seek(to: CMTime(seconds: newTime, preferredTimescale: 1))
                                        }
                                    }
                            }
                        }
                    } else {
                        Image("attach")
                        PhotosPicker("Attach a file", selection: $PostItem, matching: .any(of: [.images, .videos]))
                            .font(Font.custom("CircularStd-Book", size: 18))
                            .foregroundColor(Color(red: 0, green: 0.34, blue: 1))
                    }
                }
                
                .onChange(of: PostItem) { _ in
                    Task {
                        if let data = try? await PostItem?.loadTransferable(type: Data.self) {
                            if let uiImage = UIImage(data: data) {
                                PostImage = Image(uiImage: uiImage)
                            } else if let videoURL = saveDataAsTemporaryFile(data: data) {
                                let avPlayerItem = AVPlayerItem(url: videoURL)
                                PostVideoPlayer = AVPlayer(playerItem: avPlayerItem)
                            } else {
                                print("Failed to load media")
                            }
                        }
                    }
                }
            }
            
            .padding(.top, 70)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 1)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                .padding(.top, 30)
            VStack{
                TextField("Write somethig about the post...", text:$posttext, axis: .vertical)
                    .frame(width: 329, height: 80)
            }
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 375, height: 1)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                .padding(.top, 40)
            
            VStack{
                
                Toggle("Users can comment", isOn: $comments)
                    .font(Font.custom("CircularStd-Book", size: 16))
                    .frame(width: 329, height: 40)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                
                
            }
            .padding(.top, 20)
            
            Spacer()
        }
    }
}

struct Controls: View {
    @Binding var player: AVPlayer?
    @State private var isPlaying = false
    @State private var currentTime: Double = 0
    @State private var duration: Double = 0
    
    var body: some View {
        HStack {
            Button(action: {
                if let player = player {
                    if isPlaying {
                        player.play()
                    } else {
                        player.pause()
                    }
                    isPlaying.toggle()
                }
            }) {
                Image(isPlaying ? "play" : "pause")
                    .resizable()
                    .frame(width: 44, height: 44)
                    .foregroundColor(.blue)
            }
            .padding(.horizontal, 20)
        }
        .background(Color.white.opacity(0.8))
    }
}


struct ImageUpload_Previews: PreviewProvider {
    static var previews: some View {
        ImageUpload()
    }
}

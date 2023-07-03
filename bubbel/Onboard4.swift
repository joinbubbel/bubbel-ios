//
//  Onboard4.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct Onboard4: View {
    @State private var camera = false
    @State private var mic = false
    @State private var showCameraPermissionAlert = false    
    var body: some View {
        VStack {
            Text("")
                .padding(145)
                .background(
                    Image("Onboard4")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
            
            Text("Please allow below permissions")
                .font(
                    Font.custom("Circular Std", size: 20)
                        .weight(.medium)
                )
                .foregroundColor(.black)
                .padding(.top, 100)
                .padding(.trailing, 50)
            
            VStack {
                Toggle("Camera", isOn: $camera)
                    .padding(.top, 30)
                    .padding(.trailing, 30)
                    .padding(.leading, 30)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .onChange(of: camera) { value in
#if DEBUG
                        showCameraPermissionAlert = value
#endif
                    }
                
                Toggle("Use Microphone", isOn: $mic)
                    .padding(.top, 30)
                    .padding(.trailing, 30)
                    .padding(.leading, 30)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                
            }
            
            Spacer()
                .edgesIgnoringSafeArea(.all)
        }
        .alert(isPresented: $showCameraPermissionAlert) {
            Alert(
                title: Text("Camera Permission"),
                message: Text("Please allow the app to access the camera in your device settings."),
                primaryButton: .default(Text("Settings"), action: openAppSettings),
                secondaryButton: .cancel()
            )
        }
    }
    
    private func openAppSettings() {
        guard let settingsURL = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        UIApplication.shared.open(settingsURL)
    }
}

struct Onboard4_Previews: PreviewProvider {
    static var previews: some View {
        Onboard4()
    }
}

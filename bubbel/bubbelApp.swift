//
//  bubbelApp.swift
//  bubbel
//
//  Created by Ivoine Strachan on 30/06/2023.
//

import SwiftUI

@main
struct bubbelApp: App {
    @Environment(\.colorScheme) var colorScheme
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environment(\.colorScheme, .light)
        }
    }
}

//
//  OnboardingView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct ArrowView: View {
    var body: some View {
        Image("arrowon")
    }
}

struct OnboardingView: View {
    @State private var currentPageIndex = 0
    @State private var isOnboardingCompleted = false // Added state
    var username: String
    
 

    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $currentPageIndex) {
                    Onboard1()
                        .tag(0)
                    Onboard2()
                        .tag(1)
                    Onboard3()
                        .tag(2)
                    Onboard4()
                        .tag(3)
                }
                .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                
                HStack {
                    if currentPageIndex == 3 {
                        NavigationLink(destination: HomeView(username: username, clubID: 1), isActive: $isOnboardingCompleted) {
                            EmptyView()
                        }
                        ArrowView()
                            .onTapGesture {
                                // Navigate to HomeView when the last page is reached
                                isOnboardingCompleted = true
                            }
                    }
                }
                
                Spacer()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
            }
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear {
                   // Configure UIPageControl appearance
                   UIPageControl.appearance().currentPageIndicatorTintColor = .blue
                   UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
               }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(username: "John Doe")
    }
}

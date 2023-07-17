//
//  OnboardingView.swift
//  bubbel
//
//  Created by Ivoine Strachan on 02/07/2023.
//

import SwiftUI

struct OnboardingView: View {
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .blue
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
    }
    var body: some View {
        VStack{
            TabView {
                Onboard1()
                    .tag(1)
                Onboard2()
                    .tag(2)
                Onboard3()
                    .tag(3)
                Onboard4()
                    .tag(4)
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
            
            Spacer()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

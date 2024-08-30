//
//  ContentView.swift
//  OnboardingScreen
//
//  Created by Tushar Ahmed on 30/8/24.
//

import SwiftUI

struct OnboardingScreen: View {
    @State private var currentPage = 0
    let totalPages = 3
    
    var body: some View {
        VStack {
            TabView(selection: $currentPage) {
                OnboardingPage(imageName: "intro1", title: "Discover New Games", description: "Discover the best, new and video game And App releases here.")
                    .tag(0)
                OnboardingPage(imageName: "intro2", title: "Customize Your Experience", description: "Personalize your gaming journey with GameHub’s extensive Game library")
                    .tag(1)
                OnboardingPage(imageName: "intro3", title: "Track Your GameTime", description: "Monitor and review your gaming hours stay on top of your achievements.")
                    .tag(2)
            }
            .tabViewStyle(PageTabViewStyle())
            .animation(.easeInOut, value: currentPage)

            HStack(spacing: 8) {
                ForEach(0..<totalPages, id: \.self) { index in
                    Circle()
                        .fill(index == currentPage ? Color.green : Color.gray.opacity(0.3))
                        .frame(width: 10, height: 10)
                }
            }
            
            Button("Continue") {
            }
                    .buttonStyle(.borderedProminent)
                    .frame(maxWidth: .infinity)
                    .tint(.green)
                    .padding(.top,16)
 
        }
        .padding()
    }
}


struct OnboardingScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreen()
    }
}

//
//  OnboardingPage.swift
//  OnboardingScreen
//
//  Created by Tushar Ahmed on 30/8/24.
//

import SwiftUI

struct OnboardingPage: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .padding(.bottom, 16)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text(description)
                .tint(.gray.opacity(0.20))
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.top, -15)
        }
    }
}

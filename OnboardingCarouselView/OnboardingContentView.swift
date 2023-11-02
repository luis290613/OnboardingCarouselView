//
//  OnboardingContentView.swift
//  OnboardingCarouselView
//
//  Created by Diego on 2/11/23.
//

import SwiftUI

let features = [
    Feature(title: "Vamos a la playa", subTitle: "Nos vamosssss", image: "playaOne"),
    Feature(title: "Vamos de gira por la playa", subTitle: "Nos vamos de gira por la playa", image: "playaTwo"),
    Feature(title: "Nos vamos de vacaciones", subTitle: "De vacaciones por la playa", image: "playaThree")
]

struct OnboardingContentView: View {
    
    var feature: Feature
    
    var body: some View {
        
        ZStack {
            LinearGradient(colors: [.blue, .green], startPoint: .topLeading, endPoint: .bottomLeading)
            VStack {
                Image(feature.image)
                    .resizable()
                    .frame(height: UIScreen.main.bounds.width)
                    .frame(maxWidth: .infinity)
                    .aspectRatio(contentMode: .fit)
                    
                
                VStack(spacing: 10) {
                    Text(feature.title)
                        .font(.system(size: 24, weight: .bold))
                    Text(feature.subTitle)
                        .font(.caption)
                }
                .padding(.top, 30)
                
            }
            .padding(.horizontal, 20)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingContentView(feature: features[0])
    }
}

//
//  ContentView.swift
//  OnboardingCarouselView
//
//  Created by Diego on 2/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ForEach(features) { item in
                OnboardingContentView(feature: item)
            }
        }
        .tabViewStyle(.page)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


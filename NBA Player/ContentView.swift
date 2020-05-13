//
//  ContentView.swift
//  NBA Player
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("gs").resizable().aspectRatio(contentMode: .fit)
            Image("steph").clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -90).shadow(radius: 15)
            Text("Stephen Curry").font(.system(size: 45)).bold()
            StatText(statName: "Age", statValue: "31")
            StatText(statName: "Height", statValue: "6' 3\"")
            StatText(statName: "Wright", statValue: "190lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

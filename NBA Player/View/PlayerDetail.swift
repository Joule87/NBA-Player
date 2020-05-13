//
//  PlayerDetail.swift
//  NBA Player
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct PlayerDetail: View {
    
    var player: Player
    
    init(player: Player) {
        self.player = player
    }
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(player.team.color)).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -90).shadow(radius: 15)
            Text(player.name).font(.system(size: 45)).bold().lineLimit(1).padding(.horizontal, 15.0).minimumScaleFactor(0.5)
            StatText(statName: "Age", statValue: "\(player.age)")
            StatText(statName: "Height", statValue: "\(player.height)")
            StatText(statName: "Wright", statValue: "\(player.weight)lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerDetail(player: players[2]).previewDevice("iPhone 8")
            PlayerDetail(player: players[1]).previewDevice("iPhone 11 Max Pro")
        }
    }
}

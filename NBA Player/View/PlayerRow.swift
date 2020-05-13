//
//  PlayerRow.swift
//  NBA Player
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    var player: Player
    
    init(player: Player) {
        self.player = player
    }
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable().scaledToFit().clipShape(Circle()).background(Circle().foregroundColor(player.team.color))
                .padding(.leading, 20) .padding(.trailing, 5).padding(.top, 5).padding(.bottom, 5)
            Text(player.name).font(.system(size: 30)).bold()
            Spacer()
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerRow(player: players[5]).previewLayout(.fixed(width: 500, height: 100))
    }
}

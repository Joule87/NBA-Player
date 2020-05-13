//
//  PlayerList.swift
//  NBA Player
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        NavigationView {
            List(players) { item in
                NavigationLink(destination: PlayerDetail(player: item)) {
                     PlayerRow(player: item).frame(height: 70)
                }
            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}

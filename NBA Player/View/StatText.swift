//
//  StatText.swift
//  NBA Player
//
//  Created by Julio Collado on 5/13/20.
//  Copyright © 2020 julio. All rights reserved.
//

import SwiftUI

struct StatText: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":").padding(.leading, 30).font(Font.system(size: 35).bold())
            Text(statValue).font(.system(size: 35)).fontWeight(.light).padding(.trailing, 30)
            Spacer()
        }
    }
}

struct StatText_Previews: PreviewProvider {
    static var previews: some View {
        StatText(statName: "Age", statValue: "31")
    }
}

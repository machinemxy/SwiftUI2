//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/06/26.
//

import SwiftUI

struct FeaturedItemView: View {
    let player: Player
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

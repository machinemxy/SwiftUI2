//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/06/26.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 16)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .aspectRatio(1.6, contentMode: .fit)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}

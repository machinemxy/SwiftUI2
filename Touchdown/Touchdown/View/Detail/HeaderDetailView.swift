//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/07/26.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
    }
}

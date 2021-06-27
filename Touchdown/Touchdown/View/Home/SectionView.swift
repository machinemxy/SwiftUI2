//
//  SectionView.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/06/27.
//

import SwiftUI

struct SectionView: View {
    var rotateClockwise: Bool
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("CATEGORIES")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 250))
            .padding()
            .background(colorBackground)
    }
}

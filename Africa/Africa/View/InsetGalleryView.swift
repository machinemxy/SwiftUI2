//
//  InsetGalleryView.swift
//  Africa
//
//  Created by 馬学渊 on 2021/01/17.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        })
        
        
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

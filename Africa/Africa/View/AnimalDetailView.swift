//
//  AnimalDetailView.swift
//  Africa
//
//  Created by 馬学渊 on 2021/01/16.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 20) {
                // hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height: 6).offset(y: 24))
                
                // headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // facts
                
                // description
                
                // map
                
                // link
            }
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        })
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
    }
}

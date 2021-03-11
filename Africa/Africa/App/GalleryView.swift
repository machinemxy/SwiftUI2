//
//  GalleryView.swift
//  Africa
//
//  Created by 馬学渊 on 2021/01/14.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            Text("Placeholder")
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}

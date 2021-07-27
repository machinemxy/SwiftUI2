//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/07/26.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State private var counter = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 4, content: {
            Button(action: {
                feedback.impactOccurred()
                
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                feedback.impactOccurred()
                
                counter += 1
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
    }
}

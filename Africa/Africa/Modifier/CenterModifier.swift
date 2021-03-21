//
//  CenterModifier.swift
//  Africa
//
//  Created by Ma Xueyuan on 2021/03/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

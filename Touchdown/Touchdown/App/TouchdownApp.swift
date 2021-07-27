//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/06/06.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}

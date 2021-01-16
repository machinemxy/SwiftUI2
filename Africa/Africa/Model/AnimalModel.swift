//
//  AnimalModel.swift
//  Africa
//
//  Created by 馬学渊 on 2021/01/16.
//

import Foundation

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

//
//  VideoModel.swift
//  Africa
//
//  Created by Ma Xueyuan on 2021/02/07.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}

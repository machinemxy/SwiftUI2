//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ma Xueyuan on 2021/06/27.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

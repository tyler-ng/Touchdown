//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Tyler on 2024-06-09.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

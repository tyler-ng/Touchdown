//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Tyler on 2024-06-09.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to located \(file) in bundle.")
        }
        
        // create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        // create a decoder
        let decoder = JSONDecoder()
        
        // create a property for the decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        // return the ready-to-use data
        return decodedData
    }
}

//
//  File.swift
//  PokemonApp
//
//  Created by Krishna Prakash on 11/01/24.
//

import Foundation

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let weight: Int
    let height: Int
    let attack: Int
    let defense: Int
    let description: String
    
    
}

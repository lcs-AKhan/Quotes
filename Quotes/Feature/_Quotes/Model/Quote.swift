//
//  Quote.swift
//  Quotes
//
//  Created by Abdul Ahad Khan on 2021-10-06.
//

import Foundation

struct Quote: Decodable {
    let anime: String
    let character: String
    let quote: String
}

extension Quote {
    static let dummyData: [Quote] = [
    Quote(anime: "Anime 1", character: "Character 1", quote: "Quote 1"), Quote(anime: "Anime 2", character: "Character 2", quote: "Quote 2"), Quote(anime: "Anime 3", character: "Character 3", quote: "Quote 3")]
}

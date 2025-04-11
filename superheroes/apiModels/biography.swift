//
//  biography.swift
//  superheroes
//
//  Created by Chris Sewell on 03/04/2025.
//

struct Biography: Codable {
    var fullName: String
    var alterEgos: String
    var placeOfBirth: String
    var publisher: String
    
    private enum CodingKeys : String, CodingKey {
        case fullName = "full-name"
        case alterEgos = "alter-egos"
        case placeOfBirth = "place-of-birth"
        case publisher = "publisher"
    }
}

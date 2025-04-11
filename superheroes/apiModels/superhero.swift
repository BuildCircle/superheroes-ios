//
//  superhero.swift
//  superheroes
//
//  Created by Chris Sewell on 03/04/2025.
//

struct Superhero: Codable {
    var id: String
    var name: String
    var biography: Biography
    var image: SuperheroImage
    var powerstats : PowerStats
}

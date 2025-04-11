//
//  apiProtocol.swift
//  superheroes
//
//  Created by Chris Sewell on 03/04/2025.
//

protocol SuperheroesProtocol {
    func searchByName(name :String) async throws -> SuperheroResponse?
}

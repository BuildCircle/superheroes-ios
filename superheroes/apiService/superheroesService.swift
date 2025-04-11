//
//  superheroesService.swift
//  superheroes
//
//  Created by Chris Sewell on 03/04/2025.
//

import Foundation

class SuperheroesService: SuperheroesProtocol, ObservableObject {
    
    let apiKey = "my-key"
    let baseUrl = "https://www.superheroapi.com/api"
    
    func searchByName(name :String) async throws -> SuperheroResponse? {
        let url = URL(string: "\(baseUrl)/\(apiKey)/search/\(name)")!

        let (body, response) = try await URLSession.shared.data(from: url)
        
        // Check for valid response
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        let encodedBody =  String(data: body, encoding: .utf8)
        let jsonBody = (encodedBody?.data(using: .utf8))!
        do {
            // Decode the JSON data to an instance of User
            let superheroResponse = try JSONDecoder().decode(SuperheroResponse.self, from: jsonBody)
            return superheroResponse
        } catch {
            print("Error decoding JSON: \(error)")
        }
        
        return nil
    }
}

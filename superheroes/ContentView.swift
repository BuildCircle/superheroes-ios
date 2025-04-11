//
//  ContentView.swift
//  superheroes
//
//  Created by Chris Sewell on 03/04/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var superheroService = SuperheroesService()
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            Grid {
                GridRow {
                    Text("Hello")
                    Image(systemName: "globe")
                }
                GridRow {
                    Image(systemName: "hand.wave")
                    Text("World")
                }
            }
        }.onAppear {
            Task {
                let result = try await superheroService.searchByName(name: "batman")
                print(result)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  PokemonList.swift
//  StateManagement_iOSDevelopersMX_Demo
//
//  Created by Pedro Rojas on 05/03/21.
//

import SwiftUI

struct PokemonList: View {
    @ObservedObject var pokemonLoader: PokemonLoader
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    ForEach(pokemonLoader.pokemonData, id: \.name) {
                        PokemonCell(pokemon: $0)
                            .noSeparators(color: .white)
                    }
                }
                .listStyle(PlainListStyle())
                .navigationTitle("Pokedex")
                .navigationBarItems(
                    trailing: Button(
                        action: { pokemonLoader.load() },
                        label: { Text("Reload") }
                    )
                )

                if pokemonLoader.isLoading {
                    ActivityIndicator(style: .large, isLoading: true)
                }
            }
        }
        .onAppear {
            pokemonLoader.load()
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList(pokemonLoader: PokemonLoader())
    }
}

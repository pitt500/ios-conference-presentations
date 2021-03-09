//
//  StateManagement_iOSDevelopersMX_DemoApp.swift
//  StateManagement_iOSDevelopersMX_Demo
//
//  Created by Pedro Rojas on 05/03/21.
//

import SwiftUI

@main
struct StateManagement_iOSDevelopersMX_DemoApp: App {
    @StateObject private var loader = PokemonLoader()

    var body: some Scene {
        WindowGroup {
            PokemonList(pokemonLoader: loader)
        }
    }
}

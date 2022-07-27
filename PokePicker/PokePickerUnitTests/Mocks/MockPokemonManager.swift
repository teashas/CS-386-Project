//
//  MockPokemonManager.swift
//  PokePickerUnitTests
//
//  Created by Chip Chairez on 7/27/22.
//

import Foundation
@testable import PokePicker

class MockPokemonManager: PokemonManagerProtocol{
    func getPokemon() -> String{
        return "getPokemon"
    }
    
    func parseJSON() -> [Pokemon]? {
        return []
    }
    
    
}

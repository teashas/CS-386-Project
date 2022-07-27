//
//  PokePickerUnitTests.swift
//  PokePickerUnitTests
//
//  Created by Chip Chairez on 7/27/22.
//

import XCTest
@testable import PokePicker

class PokePickerUnitTests: XCTestCase, PokemonManagerDelegate {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPokemonManager() throws {
        let mockPokemonManager = MockPokemonManager()
        let pokemonData = mockPokemonManager.getPokemon()
        XCTAssertNotNil(pokemonData)
        let parsedPokemonData = mockPokemonManager.parseJSON()
        XCTAssertNotNil(parsedPokemonData)
    }
    
    func didGetPokemon(pokeArr: [Pokemon]) {
        XCTAssertNotNil(pokeArr)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

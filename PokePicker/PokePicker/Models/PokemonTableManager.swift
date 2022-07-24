//
//  PokemonTableManager.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/22/22.
//
import Foundation
import UIKit

struct PokemonTableManager{
    var delegate: PokemonManagerDelegate?
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func getPokemon(){
        if let url = Bundle.main.url(forResource: "pokedex", withExtension: "json"){
            do{
                let data = try Data(contentsOf: url)
                if let pokeArr = parseJSON(data: data){
                    self.delegate?.didGetPokemon(pokeArr: pokeArr)
                }
            }
            catch{
                print(error.localizedDescription)
            }
        }
    }
    
    func parseJSON(data: Data) -> [Pokemon]?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode([PokemonData].self, from: data)
            var pokeArr: [Pokemon] = []
            for pokemonData in decodedData{
                let id = String(pokemonData.id)
                let name = pokemonData.name.english
                let spriteString = pokemonData.image.sprite
                //let image = UIImage(named: spriteString)
                var pokemon = Pokemon(context: context)
                pokemon.id = id
                pokemon.name = name
                pokemon.spriteRef = spriteString
                
                pokeArr.append(pokemon)
            }
            print(pokeArr)
            return pokeArr
        }
        catch{
            return nil
        }
    }
}

protocol PokemonManagerDelegate{
    func didGetPokemon(pokeArr: [Pokemon])
}

struct PokemonData: Codable{
    var name: Name
    var image: Image
    var id: Int
    
    struct Name: Codable{
        var english: String
    }
    
    struct Image: Codable{
        var sprite: String
    }
}



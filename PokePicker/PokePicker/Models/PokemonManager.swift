//
//  PokemonTableManager.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/22/22.
//
import Foundation
import UIKit

class PokemonManager{
    //public static let shared = PokemonManager()
    
    static let shared: PokemonManager = {
            let instance = PokemonManager()
            return instance
        }()
    
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
                
                var stats = Stats(context: context)
                stats.hp = String(pokemonData.base.HP)
                stats.attack = String(pokemonData.base.Attack)
                stats.defense = String(pokemonData.base.Defense)
                stats.spAttack = String(pokemonData.base.spAttack)
                stats.spDefense = String(pokemonData.base.spDefense)
                stats.speed = String(pokemonData.base.Speed)
                
                var pokemon = Pokemon(context: context)
                pokemon.id = String(pokemonData.id)
                pokemon.name = pokemonData.name.english
                pokemon.spriteRef = pokemonData.image.sprite
                pokemon.types = pokemonData.type
                pokemon.stats = stats
                
                pokeArr.append(pokemon)
            }
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

protocol PokemonManagerProtocol{
    func getPokemon() -> String
    
    func parseJSON() -> [Pokemon]?
}

struct PokemonData: Codable{
    var name: Name
    var image: Image
    var id: Int
    var type: [String]
    var base: Base
    
    struct Name: Codable{
        var english: String
    }
    
    struct Base: Codable{
        var HP: Int
        var Attack: Int
        var Defense: Int
        var spAttack: Int
        var spDefense: Int
        var Speed: Int
    }
    
    struct Image: Codable{
        var sprite: String
    }
}



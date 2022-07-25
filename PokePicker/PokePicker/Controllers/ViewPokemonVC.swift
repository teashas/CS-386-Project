//
//  PokemonVC.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/24/22.
//

import UIKit

class ViewPokemonVC: UIViewController {
    
    
    @IBOutlet weak var sprite: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var spAttackLabel: UILabel!
    @IBOutlet weak var spDefenseLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
//    var spriteRef: String?
//
//    var name: String?
//
//    var types: String?
//
//    var hp: String?
//    var attack: String?
//    var defense: String?
//    var spAttack: String?
//    var spDefense: String?
//    var speed: String?
    
    var pokemon: Pokemon?
    override func viewDidLoad() {
        guard let pokemon = pokemon else{
            return
        }
        
        super.viewDidLoad()
        sprite.image = UIImage(named: pokemon.spriteRef ?? "")
        nameLabel.text = "Name: " + pokemon.name!
        typeLabel.text = "Type: "
        typeLabel.text = typeLabel.text! + pokemon.types![0]
        
        hpLabel.text = "Hp: " + (pokemon.stats?.hp)!
        attackLabel.text = "Attack: " + (pokemon.stats?.attack)!
        defenseLabel.text = "Defense: " + (pokemon.stats?.defense)!
        spAttackLabel.text = "spAttack: " + (pokemon.stats?.spAttack)!
        spDefenseLabel.text = "spDefense: " + (pokemon.stats?.spDefense)!
        speedLabel.text = "Speed: " + (pokemon.stats?.speed)!
        
        
//        destination.hp = "HP: " + (pokemon.stats?.hp)!
//        destination.attack = "Attack: " + (pokemon.stats?.attack)!
//        destination.defense = "Defense: " + (pokemon.stats?.defense)!
//        destination.spAttack = "spAttack: " + (pokemon.stats?.spAttack)!
//        destination.spDefense = "spDefense: " + (pokemon.stats?.spDefense)!
//        destination.speed = "Speed: " + (pokemon.stats?.speed)!
//        nameLabel.text = name
//        typeLabel.text = types
//        sprite.image = UIImage(named: spriteRef ?? "")
//
//        hpLabel.text = hp
//        attackLabel.text = attack
//        defenseLabel.text = defense
//        spAttackLabel.text = spAttack
//        spDefenseLabel.text = spDefense
//        speedLabel.text = speed
    }
    


}

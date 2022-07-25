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
    
    var pokemon: Pokemon?
    override func viewDidLoad() {
        guard let pokemon = pokemon else{
            return
        }
        
        super.viewDidLoad()
        sprite.image = UIImage(named: pokemon.spriteRef ?? "")
        sprite.layer.magnificationFilter = CALayerContentsFilter.nearest
        
        nameLabel.text = pokemon.name
        typeLabel.text = pokemon.types![0]
        if pokemon.types?.count == 2{
            typeLabel.text = typeLabel.text! + "/" + pokemon.types![1]
        }
        
        hpLabel.text = pokemon.stats?.hp
        attackLabel.text = pokemon.stats?.attack
        defenseLabel.text = pokemon.stats?.defense
        spAttackLabel.text = pokemon.stats?.spAttack
        spDefenseLabel.text = pokemon.stats?.spDefense
        speedLabel.text = pokemon.stats?.speed
        
    }
    


}

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
    
    var spriteRef: String?
    
    var name: String?
    
    var types: String?
    
    var hp: String?
    var attack: String?
    var defense: String?
    var spAttack: String?
    var spDefense: String?
    var speed: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        typeLabel.text = types
        sprite.image = UIImage(named: spriteRef ?? "")
        
        hpLabel.text = hp
        attackLabel.text = attack
        defenseLabel.text = defense
        spAttackLabel.text = spAttack
        spDefenseLabel.text = spDefense
        speedLabel.text = speed
    }
    


}

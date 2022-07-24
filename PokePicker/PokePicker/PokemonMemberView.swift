//
//  PokemonSelectView.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/22/22.
//

import UIKit

class PokemonMemberView: UIView {
    
    var delegate: PokemonSelectViewDelegate?

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var stack: UIStackView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var sprite: UIImageView!

    var pokemon: Pokemon?
    
    func setPokemon(pokemon: Pokemon){
        self.pokemon = pokemon
        name.text = pokemon.name
        sprite.image = UIImage(named: pokemon.spriteRef!)
    }
    
    func setBorder(){
        stack.layer.borderWidth = 1.0
        stack.layer.borderColor = UIColor.systemGray.cgColor
    }
    
    func removeBorder(){
        stack.layer.borderWidth = 0.0
    }
    
    @objc func tapped(){
        self.setBorder()
        delegate?.didSelect(pokemonSelectView: self)
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("PokemonMemberView", owner: self, options: nil)
        addSubview(contentView)
        contentView.addGestureRecognizer(UITapGestureRecognizer(target:self,action:#selector(self.tapped)))
        contentView.frame = self.bounds
    }
}

protocol PokemonSelectViewDelegate{
    func didSelect(pokemonSelectView: PokemonMemberView)
}

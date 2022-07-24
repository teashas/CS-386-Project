//
//  ViewController.swift
//  poketest
//
//  Created by Chip Chairez on 7/22/22.
//

import UIKit
import Foundation

class TeamCreateVC: UIViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var teamNameLabel: UILabel!
    
    @IBOutlet weak var pokemon1: PokemonMemberView!
    @IBOutlet weak var pokemon2: PokemonMemberView!
    @IBOutlet weak var pokemon3: PokemonMemberView!
    @IBOutlet weak var pokemon4: PokemonMemberView!
    @IBOutlet weak var pokemon5: PokemonMemberView!
    @IBOutlet weak var pokemon6: PokemonMemberView!
    
    var pokemonTableManager = PokemonTableManager()
    var pokemons: [Pokemon] = []
    
//    lazy var team: [PokemonSelectView] = {
//        return [pokemon1, pokemon2, pokemon3, pokemon4, pokemon5, pokemon6]
//    }()
    var teamName: String?
    
    
    var selectedPokemon: PokemonMemberView?
    
    override func viewDidLoad() {
        
        
        pokemon1.delegate = self
        pokemon2.delegate = self
        pokemon3.delegate = self
        pokemon4.delegate = self
        pokemon5.delegate = self
        pokemon6.delegate = self
        selectedPokemon = pokemon1
        pokemon1.setBorder()
        
        pokemonTableManager.delegate = self
        pokemonTableManager.getPokemon()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PokemonCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.rowHeight = 51
        
        teamNameLabel.text = teamName
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create", style: .plain, target: self, action: #selector(createPressed))
    }
    @objc func createPressed(){
        print("heyyy")
        var newTeam = Team(context: context)
        newTeam.name = teamName
        newTeam.addToMembers(pokemon1.pokemon!)
        newTeam.addToMembers(pokemon2.pokemon!)
        newTeam.addToMembers(pokemon3.pokemon!)
        newTeam.addToMembers(pokemon4.pokemon!)
        newTeam.addToMembers(pokemon5.pokemon!)
        newTeam.addToMembers(pokemon6.pokemon!)
        
        do{
            try context.save()
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
    func setDefaultPokemon(){
        pokemon1.setPokemon(pokemon: pokemons[24])
        pokemon2.setPokemon(pokemon: pokemons[2])
        pokemon3.setPokemon(pokemon: pokemons[5])
        pokemon4.setPokemon(pokemon: pokemons[8])
        pokemon5.setPokemon(pokemon: pokemons[142])
        pokemon6.setPokemon(pokemon: pokemons[130])
    }
    
}

extension TeamCreateVC: PokemonManagerDelegate{
    func didGetPokemon(pokeArr: [Pokemon]) {
        pokemons = pokeArr
        setDefaultPokemon()
        tableView.reloadData()
    }
}

extension TeamCreateVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokemonCell
        let pokemon = pokemons[indexPath.row]
        
        cell.name.text = pokemon.name
        cell.sprite?.image = UIImage(named: pokemon.spriteRef!)
        cell.id.text = pokemon.id
        cell.selectionStyle = .gray
        return cell
    }
    
    
}

extension TeamCreateVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = pokemons[indexPath.row]
        selectedPokemon?.setPokemon(pokemon: pokemon)
    }
}

extension TeamCreateVC: PokemonSelectViewDelegate{
    func didSelect(pokemonSelectView: PokemonMemberView) {
        if selectedPokemon != pokemonSelectView{
            selectedPokemon?.removeBorder()
            selectedPokemon = pokemonSelectView
        }
    }
}

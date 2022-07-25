//
//  ViewTeamVC.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/25/22.
//

import UIKit

class ViewTeamVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var teamNameLabel: UILabel!
    var teamName: String?
    var pokemons: [Pokemon] = []
    var selectedPokemon: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PokemonCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.rowHeight = 51
        
        teamNameLabel.text = teamName
        
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "GoToViewPokemon"){
            let destination = segue.destination as! ViewPokemonVC
            destination.pokemon = selectedPokemon
        }
    }

}

extension ViewTeamVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PokemonCell
        let pokemon = pokemons[indexPath.row]
        
        cell.name.text = pokemon.name
        cell.sprite?.image = UIImage(named: pokemon.spriteRef!)
        cell.sprite?.layer.magnificationFilter = CALayerContentsFilter.nearest
        cell.id.text = pokemon.id
        cell.selectionStyle = .gray
        return cell
    }
}

extension ViewTeamVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPokemon = pokemons[indexPath.row]
        performSegue(withIdentifier: "GoToViewPokemon", sender: self)
    }
}

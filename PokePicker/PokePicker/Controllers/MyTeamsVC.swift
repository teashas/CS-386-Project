//
//  MyTeamsVC.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/24/22.
//

import UIKit

class MyTeamsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var teams: [Team] = []
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        
        self.tabBarController?.delegate = self
        
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TeamCell", bundle: nil), forCellReuseIdentifier: "cell")
        tableView.rowHeight = 51
        getTeams()
        
        
        //super.viewDidLoad()
        

    }
    
    func getTeams(){
        do{
            let swag = try context.fetch(Team.fetchRequest())
            teams = swag
            tableView.reloadData()
            
        }
        catch{
            print(error.localizedDescription)
        }
    }
    
    func deleteTeam(index: Int){
        print(index)
        self.context.delete(self.teams[index])
        do{
            try self.context.save()
        }
        catch{
            print(error.localizedDescription)
        }
        self.getTeams()
        
    }
    

}

extension MyTeamsVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TeamCell
        let team = teams[indexPath.row]
        for (index, pokemon) in team.members!.enumerated(){
            var swag = pokemon as! Pokemon
            cell.team[index].image = UIImage(named: swag.spriteRef!)
        }
        
        cell.name.text = team.name
        return cell
    }
}

extension MyTeamsVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let modifyAction = UIContextualAction(style: .normal, title:  "Delete", handler: { (ac:UIContextualAction, view:UIView, success:(Bool) -> Void) in
            self.deleteTeam(index: indexPath.row)
            success(true)
        })
        modifyAction.backgroundColor = .systemRed
        
        return UISwipeActionsConfiguration(actions: [modifyAction])
    }
}

extension MyTeamsVC: UITabBarControllerDelegate{
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if(viewController == self){
            getTeams()
        }
    }
}

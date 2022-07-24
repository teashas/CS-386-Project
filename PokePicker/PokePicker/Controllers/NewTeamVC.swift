//
//  NewTeamVC.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/23/22.
//

import UIKit

class NewTeamVC: UIViewController {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var teamName: UITextField!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressed(_ sender: UIButton) {
        
        do{
            let swag = try context.fetch(Team.fetchRequest())
            
            var yolo: String = ""
            for team in swag{
                print(team.name)
                yolo = yolo + team.name! + "\n"
                var arr = team.members?.array as! [Pokemon]
                for mon in arr{
                    yolo = yolo + mon.name! + "\n"
                    print(mon.name)
                }
            }
            
            label.text = yolo
            
        }
        catch{
            print(error.localizedDescription)
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func createTeamPressed(_ sender: UIButton) {
        if (teamName.text != ""){
            let teamCreateVC = self.storyboard?.instantiateViewController(withIdentifier: "TeamCreateVC") as! TeamCreateVC
            teamCreateVC.teamName = teamName.text
            self.tabBarController?.tabBar.isHidden = true
            self.navigationController?.pushViewController(teamCreateVC, animated: true)
        }
        
        
    }
}

extension NewTeamVC: UINavigationControllerDelegate{
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if(viewController == self){
            self.tabBarController?.tabBar.isHidden = false
        }
    }
}

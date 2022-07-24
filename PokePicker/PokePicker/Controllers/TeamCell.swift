//
//  TeamCell.swift
//  PokePicker
//
//  Created by Chip Chairez on 7/24/22.
//

import UIKit

class TeamCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var sprite1: UIImageView!
    
    @IBOutlet weak var sprite2: UIImageView!
    
    @IBOutlet weak var sprite3: UIImageView!
    
    @IBOutlet weak var sprite4: UIImageView!
    
    @IBOutlet weak var sprite5: UIImageView!
    
    @IBOutlet weak var sprite6: UIImageView!
    
    lazy var team: [UIImageView] = {
        return [sprite1, sprite2, sprite3, sprite4, sprite5, sprite6]
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

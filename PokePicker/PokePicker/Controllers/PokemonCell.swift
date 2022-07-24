//
//  ChatCell.swift
//  ScrollSwag
//
//  Created by Chip Chairez on 6/29/22.
//

import UIKit

class PokemonCell: UITableViewCell {
    
    @IBOutlet weak var sprite: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var id: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
}

//
//  File.swift
//  Assignment 5
//
//  Created by Nadia Khan on 10/10/19.
//  Copyright © 2019 cs329e. All rights reserved.
//

import Foundation
import UIKit

class AnimalCell: UITableViewCell{
    @IBOutlet weak var animalPic: UIImageView!
    @IBOutlet weak var animalTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

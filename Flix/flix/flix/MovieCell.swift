//
//  MovieCell.swift
//  flix
//
//  Created by Wiliam Kwon on 2/10/19.
//  Copyright © 2019 Wiliam Kwon. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var PosterLabel: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

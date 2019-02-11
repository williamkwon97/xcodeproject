//
//  MovieCell.swift
//  flix2
//
//  Created by Wiliam Kwon on 2/10/19.
//  Copyright © 2019 Wiliam Kwon. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    @IBOutlet weak var TitleLabel: UILabel!
    
    @IBOutlet weak var PosterLabel: UIImageView!
    @IBOutlet weak var SynopsisLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

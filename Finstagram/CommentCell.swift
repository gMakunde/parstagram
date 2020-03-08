//
//  CommentCell.swift
//  Finstagram
//
//  Created by George Martin on 3/8/20.
//  Copyright © 2020 Developer Student Club Morgan State. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

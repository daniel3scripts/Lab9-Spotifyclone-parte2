//
//  ItemPlayListDetailTableViewCell.swift
//  SpotifyClone
//
//  Created by MAC15 on 27/05/22.
//

import UIKit

class ItemPlayListDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var lblAuthor: UILabel!
        @IBOutlet weak var coverImage: UIImageView!
        @IBOutlet weak var lblName: UILabel!
        
        override func awakeFromNib() {
            super.awakeFromNib()
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)
        }

}

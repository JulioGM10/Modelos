//
//  TableViewCell.swift
//  Table02-gpo05
//
//  Created by macbook on 22/03/18.
//  Copyright © 2018 iosLab. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var label : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

       // label.text = "rr"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
       // for _ in panes{
            //label.text = String(panes[IndexP].precio)
        //}
    }
}

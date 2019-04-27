//
//  TableViewCell.swift
//  CoreDataDemo
//
//  Created by Akash Technolabs on 21/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell
{

    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  RecipeCell.swift
//  RecipApp
//
//  Created by VICTOR ALVAREZ LANTARON on 26/11/18.
//  Copyright © 2018 victorSL. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    
    @IBOutlet var imgRecipe: UIImageView!
    @IBOutlet var lblName: UILabel!
    @IBOutlet var txtfDescription: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //height ---> 120
    
}

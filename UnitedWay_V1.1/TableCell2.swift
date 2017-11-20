//
//  TableCell.swift
//  Swift-TableView-Example
//
//  Created by Bilal ARSLAN on 11/10/14.
//  Copyright (c) 2014 Bilal ARSLAN. All rights reserved.
//

import Foundation
import UIKit


class TableCell2 : UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var prepTimeLabel: UILabel?
    @IBOutlet var thumbnailImageView: UIImageView?
    
    
    // MARK: Cell Configuration
    func configurateTheCell(_ recipe: Recipe2) {
        self.nameLabel?.text = recipe.name2
        self.prepTimeLabel?.text = " " + recipe.prepTime2
        self.thumbnailImageView?.image = UIImage(named: recipe.thumbnails2)
    }
}

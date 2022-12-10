//
//  TeamAndUmpireTableViewCell.swift
//  Cricket
//
//  Created by Dhanush Devadiga on 10/12/22.
//

import UIKit

class TeamAndUmpireTableViewCell: UITableViewCell {

    @IBOutlet weak var cellBackGroundView: UIView!

    @IBOutlet weak var profileImage: CustomImageView!
    @IBOutlet weak var name: UILabel!
    
    func setUpValues() {
        cellBackGroundView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cellBackGroundView.layer.cornerRadius = 4
        profileImage.image = #imageLiteral(resourceName: "profile4")
        profileImage.setCornerRadius()
        name.text = "Dhanush"
    }
}

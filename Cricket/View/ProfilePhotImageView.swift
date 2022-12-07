//
//  ProfilePhotImageView.swift
//  Cricket
//
//  Created by Preetam G on 07/12/22.
//

import UIKit

class ProfilePhotImageView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    
    }
    
    
    func setRadius() {
        self.backgroundColor = .clear
        self.layer.opacity = 2
        self.layer.cornerRadius = self.bounds.width / 2
    }
    
}

//
//  RadioButton.swift
//  Cricket
//
//  Created by Preetam G on 06/12/22.
//

import UIKit

class RadioButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure() {
        
        self.layer.cornerRadius = 22
        self.layer.borderWidth = 2
        self.layer.borderColor = #colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
        self.setTitleColor(#colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1), for: .normal)
        self.tintColor = . clear
        self.setImage(#imageLiteral(resourceName: "radio"), for: .normal)
    }
    
    func setRadioButtons(button: RadioButton, buttons: [RadioButton]) {
        for radioButton in buttons {
            if radioButton !== button {
                radioButton.configureDeselectedButton()
            }
        }
        button.configureSelected()
    }
    
    func changeButtonsStatus(sender: RadioButton, buttons: [RadioButton]) {
        setRadioButtons(button: sender, buttons: buttons)
    }
    
    func configureSelected() {
        
        configure()
        self.setImage(#imageLiteral(resourceName: "radioFill"), for: .normal)
        self.layer.borderColor = #colorLiteral(red: 0.9803921569, green: 0.4431372549, blue: 0.4431372549, alpha: 1)
        self.setTitleColor(#colorLiteral(red: 0.9803921569, green: 0.4431372549, blue: 0.4431372549, alpha: 1), for: .normal)
    }
    
    func configureDeselectedButton() {

        configure()
        self.setImage(#imageLiteral(resourceName: "radio"), for: .normal)
        self.layer.borderColor = #colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
        self.setTitleColor(#colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1), for: .normal)
    }
}

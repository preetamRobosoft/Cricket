//
//  RegisterViewModel.swift
//  Cricket
//
//  Created by Preetam G on 06/12/22.
//

import Foundation

class RegisterViewModel {
    
    var genderButtons = [RadioButton] ()
    var runs = [RadioButton] ()
    
    func assignGenderButtons(buttons: [RadioButton]) {
        genderButtons = buttons
    }
}

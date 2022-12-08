//
//  NewUser.swift
//  Cricket
//
//  Created by Preetam G on 07/12/22.
//

import Foundation

class NewUser {
    
    var userID: Int
    var username: String
    var email: String
    var gender: String
    var phoneNumber: String?
    var city: String?
    var age: Int?
    var password: String
    // TODO:  profilePhoto
    
    init() {
        self.userID = 0
        self.username = ""
        self.email = ""
        self.gender = ""
        self.phoneNumber = nil
        self.city = nil
        self.age = 0
        self.password = ""
    }
}

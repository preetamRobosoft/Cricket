//
//  RegisterViewModel.swift
//  Cricket
//
//  Created by Preetam G on 07/12/22.
//

import Foundation

class RegistrationViewModel {
    
    var currentUser = NewUser()
    var parameters: [String: Any] = [:]
    var password: String = ""
    var confirmPassword = ""
    let signUpURL = "http://cric-env.eba-esrqeiw3.ap-south-1.elasticbeanstalk.com/sign-up"
    
    func assignCurrentUser(username: String, gender: String, email: String, phoneNumber: String?, city: String?, age: Int?, password: String) {
        currentUser.username = username
        currentUser.gender = gender
        currentUser.email = email
        currentUser.phoneNumber = phoneNumber
        currentUser.city = city
        currentUser.age = age
        currentUser.password = password
        assignParameters()
    }
    
    func assignParameters() {
        parameters["username"] = currentUser.username
        parameters["gender"] = currentUser.gender
        parameters["email"] = currentUser.email
        parameters["phoneNumber"] = currentUser.phoneNumber
        parameters["city"] = currentUser.city
        parameters["age"] = currentUser.age
        parameters["password"] = currentUser.password
    }
    
    func registerCurrentUser(completion: @escaping((Bool) -> Void)) {
        let networkManger = NetworkManager()
        print(parameters)
        networkManger.postData(url: signUpURL, parameters: parameters) { (statusCode, error) in
            if error != nil {
                completion(false)
                return
            }
            
            if statusCode == 200 {
                print("Succcesfull login")
                completion(true)
            }
        }
    }
}

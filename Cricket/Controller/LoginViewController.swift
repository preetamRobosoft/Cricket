//
//  LoginViewController.swift
//  Cricket
//
//  Created by Dhanush Devadiga on 07/12/22.
//

import UIKit

class LoginViewController: UIViewController {


    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var facebookLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        _ = self.loginButton.applyGradient( colours: [ #colorLiteral(red: 1, green: 0.7294117647, blue: 0.5490196078, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.3607843137, blue: 0.4156862745, alpha: 1)], cornerRadius: 4)
    }
    
    @IBAction func onRegisterTapped(_ sender: Any) {

            let registerVC = storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController

            navigationController?.pushViewController(registerVC, animated: true)

        }
    
    @IBAction func backButtonTapped(_ sender: Any) {

            navigationController?.popViewController(animated: true)

        }
}

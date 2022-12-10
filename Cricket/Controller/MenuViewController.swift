//
//  MenuViewController.swift
//  Cricket
//
//  Created by Preetam G on 06/12/22.
//

import UIKit

class MenuViewController: UIViewController {


    @IBOutlet weak var profileImage: CustomImageView!
    override func viewDidLoad() {
        
        profileImage.setCornerRadius()
        super.viewDidLoad()
    }
    @IBAction func onClickMenu(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
    @IBAction func onClickTournament(_ sender: Any) {
    }
    @IBAction func onClickManageTournament(_ sender: Any) {
    }
    @IBAction func onClickViewTournament(_ sender: Any) {
    }
    @IBAction func onClickClose(_ sender: Any) {
        navigationController?.popViewController(animated: false)
    }
}

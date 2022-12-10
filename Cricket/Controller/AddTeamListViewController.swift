//
//  AddTeamListViewController.swift
//  Cricket
//
//  Created by Dhanush Devadiga on 10/12/22.
//

import UIKit

class AddTeamListViewController: UIViewController {

    @IBOutlet weak var addTeamButton: CustomAddButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var proceedButton: GradientButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButton()
        registerTableCell()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        proceedButton.applyGradient(colors: [#colorLiteral(red: 1, green: 0.7294117647, blue: 0.5490196078, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.3607843137, blue: 0.4156862745, alpha: 1)], cornerRadius: CGFloat(0))
    }
    
    private func configureButton() {
        navigationController?.navigationBar.isHidden = true
        proceedButton.applyGradient(colors: [#colorLiteral(red: 1, green: 0.7294117647, blue: 0.5490196078, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.3607843137, blue: 0.4156862745, alpha: 1)], cornerRadius: CGFloat(0))
    }
    
    private func registerTableCell() {
        tableView.register(UINib(nibName: "TeamAndUmpireTableViewCell", bundle: nil), forCellReuseIdentifier: "teamAndUmpireCell")
    }
}

extension AddTeamListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamAndUmpireCell") as? TeamAndUmpireTableViewCell else {
            return UITableViewCell()
        }
        cell.setUpValues()
        return cell
    }
    
    
}

//
//  PersonsInfoViewController.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 04.06.2023.
//

import UIKit

class PersonsInfoViewController: UIViewController {

    
    //MARK: Outlets
    @IBOutlet var personsWorkLabel: UILabel!
    @IBOutlet var personsSkillsLabel: UILabel!
    
    //MARK: Lifecycle
    private let users = User.getPersonsInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsWorkLabel.text = users.userPersonInfo.personsWork
        personsSkillsLabel.text = users.userPersonInfo.personsSkills
    }
}

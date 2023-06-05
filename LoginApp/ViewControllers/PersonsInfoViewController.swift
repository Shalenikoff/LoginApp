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
    var user = User.getPersonsInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsWorkLabel.text = user.personsInfo.work
        personsSkillsLabel.text = user.personsInfo.skills
    }
}

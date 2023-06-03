//
//  PersonsViewController.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 04.06.2023.
//

import UIKit

class PersonsViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet var personsImageView: UIImageView!
    @IBOutlet var personsNameLabel: UILabel!
    @IBOutlet var personsSurnameLabel: UILabel!
    @IBOutlet var personsAgeLabel: UILabel!
    @IBOutlet var personsDiscription: UILabel!
    
    
    //MARK: Lifecycle
    
    private let users = User.getPersonsInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsNameLabel.text = users.userPersonInfo.personName
        personsSurnameLabel.text = users.userPersonInfo.personSurname
        personsAgeLabel.text = users.userPersonInfo.personsAge
        personsDiscription.text = users.userPersonInfo.personsDiscription
        //personsImageView.image = UIImage(named: users.userPersonInfo.personsImage)
       
    }
}

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
    
    var user = User.getPersonsInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        personsNameLabel.text = user.personsInfo.name
        personsSurnameLabel.text = user.personsInfo.surname
        personsAgeLabel.text = user.personsInfo.age
        personsDiscription.text = user.personsInfo.discription
        personsImageView.image = UIImage(named: user.personsInfo.image)
        title = user.personsInfo.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personsIVC = segue.destination as? PersonsInfoViewController else { return }
        personsIVC.user = user
    }
}

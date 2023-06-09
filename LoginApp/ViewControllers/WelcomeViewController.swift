//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 26.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    var user: User!
    
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "\u{2665}"
        welcomeUserLabel.text = "Welcome, \(user.personsInfo.fullName)!"
    }
}

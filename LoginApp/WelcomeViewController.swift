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
    
    var userName: String!
    
    //MARK: lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = "\u{2665}"
        welcomeUserLabel.text = "Welcome, \(userName!)"
    }
    
    //MARK: Actions
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
    
}

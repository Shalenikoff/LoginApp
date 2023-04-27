//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 26.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var welcomeUserLabel: UILabel!
    @IBOutlet var emojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let emojiLabel = "\u{2665}"
    }
    

}

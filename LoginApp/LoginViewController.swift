//
//  ViewController.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 26.04.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameField.text
    }
    
    // MARK: Actions
    @IBAction func forgotNameButton() {
        showAlert(with: "Forgot your name?", and: "Your name is SWIFTBOOK")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "OOPS, you forgot your password!", and: "Try to make numbers from 1 till 5")
    }
    
    @IBAction func logInButton() {
        performSegue(withIdentifier: "showSecondView", sender: nil)
    }
}

// MARK: UIAlertCOntrollers
extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.passwordField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


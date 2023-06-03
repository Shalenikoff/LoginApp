//
//  ViewController.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 26.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    
    // MARK: Lifecycle
    
    private let users = User.getPersonsInfo()
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userName = userNameField.text
            }
        }
    }
    
    // MARK: Actions
    @IBAction func forgotNameButton() {
        showAlert(with: "Forgot your name?", and: "Your name is \(users.userName)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Forgot your password?", and: "Try \(users.userPassword)")
    }
    
    @IBAction func logInButton() {
        if userNameField.text == users.userName && passwordField.text == users.userPassword {
            performSegue(withIdentifier: "showSecondView", sender: nil)
        } else {
            showAlert(with: "OOOPS, incorrect Username or Passord", and: "Please, try again")
        }
    }
    
    @IBAction func unwindSegue(segue:UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
}

// MARK: UIAlertCOntrollers
extension LoginViewController {
    
    /// Shows Alert Controller
    /// - Parameters:
    ///   - title: The title of alert controller
    ///   - message: The text in alert controller
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.passwordField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


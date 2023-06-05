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
    
    private let user = User.getPersonsInfo()
 
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = $0 as? UINavigationController {
                guard let personsVC = navigationVC.topViewController as? PersonsViewController else { return }
                personsVC.user = user
            }
        }
    }
    
    // MARK: Actions
    @IBAction func forgotNameButton() {
        showAlert(with: "Forgot your name?", and: "Your name is \(user.login)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Forgot your password?", and: "Try \(user.password)")
    }
    
    @IBAction func logInButton() {
        if userNameField.text == user.login && passwordField.text == user.password {
            performSegue(withIdentifier: "showSecondView", sender: nil)
        } else {
            showAlert(with: "OOOPS, incorrect Username or Passord", and: "Please, try again")
        }
    }
    
    @IBAction func unwindSegueToLoginView(segue:UIStoryboardSegue) {
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


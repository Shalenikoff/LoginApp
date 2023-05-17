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
    
    private let userName = "SWIFTBOOK"
    private let userPassword = "12345"
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //    } - Данный метод никак не переопределяется и пустой, поэтому можно его вообше убрать
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameField.text
    }
    
    // MARK: Actions
    @IBAction func forgotNameButton() {
        showAlert(with: "Forgot your name?", and: "Your name is \(userName)")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(with: "Forgot your password?", and: "Try \(userPassword)")
    }
    
    @IBAction func logInButton() {
        if userNameField.text == userName && passwordField.text == userPassword {
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


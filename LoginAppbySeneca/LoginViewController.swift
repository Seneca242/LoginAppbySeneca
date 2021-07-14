//
//  ViewController.swift
//  LoginAppbySeneca
//
//  Created by Дмитрий Дмитрий on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "Seneca"
    let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeName = userName
    }

    @IBAction func loginButtonPressed() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                message: "Please enter correct login and password"
            )
        }
    }
    
    @IBAction func remindUserName() {
        showAlert(
            title: "Oops!",
            message: "Your User Name is \(userName)"
        )
    }
    
    @IBAction func remindPassword() {
        showAlert(
            title: "Oops!",
            message: "Your password is \(password)"
        )
    }
    @IBAction func unwindSegue(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    internal func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            loginButtonPressed()
            performSegue(withIdentifier: "goToWelcomeVC", sender: nil)
        }
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
}

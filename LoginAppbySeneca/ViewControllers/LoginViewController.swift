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
    
    private let userInfo = User.getUserInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let allOtherVC = tabBarVC.viewControllers else { return }
       
        for viewController in allOtherVC {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.welcomeName = userInfo
            } else if let navigationVC = viewController as? UINavigationController {
                let personInfoVC = navigationVC.topViewController as! PersonInfoViewController
                personInfoVC.userInfo = userInfo
            }
            
        }
    }

    @IBAction func loginButtonPressed() {
        if userNameTF.text != userInfo.login || passwordTF.text != userInfo.password {
            showAlert(
                title: "Invalid login or password",
                message: "Please enter correct login and password"
            )
        }
    }
    
    @IBAction func remindUserName() {
        showAlert(
            title: "Oops!",
            message: "Your User Name is \(userInfo.login)"
        )
    }
    
    @IBAction func remindPassword() {
        showAlert(
            title: "Oops!",
            message: "Your password is \(userInfo.password)"
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
            self.passwordTF.text = ""
        }
        alert.addAction(OkAction)
        present(alert, animated: true)
    }
}



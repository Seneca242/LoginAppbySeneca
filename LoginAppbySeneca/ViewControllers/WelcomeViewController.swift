//
//  WelcomeViewController.swift
//  LoginAppbySeneca
//
//  Created by Дмитрий Дмитрий on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeVCLabel: UILabel!
    
    var welcomeName: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeVCLabel.text = "Welcome, \(welcomeName.person.name) \(welcomeName.person.surname)!"
        view.backgroundColor = .orange
    }
}


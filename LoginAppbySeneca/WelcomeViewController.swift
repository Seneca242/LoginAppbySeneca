//
//  WelcomeViewController.swift
//  LoginAppbySeneca
//
//  Created by Дмитрий Дмитрий on 13.07.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeVCLabel: UILabel!
    
    var welcomeName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeVCLabel.text = "Welcome, \(welcomeName)!"
        view.backgroundColor = .orange
    }
    
    
    
}

//
//  PersonInfoViewController.swift
//  LoginAppbySeneca
//
//  Created by Дмитрий Дмитрий on 18.07.2021.
//

import UIKit

class PersonInfoViewController: UIViewController {

    @IBOutlet var mainTextView: UITextView!
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTextView.layer.cornerRadius = 15
        title = "\(userInfo.person.name) \(userInfo.person.surname)"
        mainTextView.text = userInfo.person.biography
    }
    

   
}

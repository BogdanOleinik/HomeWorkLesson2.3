//
//  WelcomeViewController.swift
//  HomeWorkLesson2.3
//
//  Created by Богдан Олейник on 05.01.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        userNameLabel.text = "Welcome, \(user.person.fullname)!"
    }
}



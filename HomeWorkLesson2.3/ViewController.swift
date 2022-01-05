//
//  ViewController.swift
//  HomeWorkLesson2.3
//
//  Created by Богдан Олейник on 05.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func forgotUserName(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Oops!", message: "Your name is \(user)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in }
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func forgotPassword(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Oops!", message: "Your password is \(password)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in }
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
}


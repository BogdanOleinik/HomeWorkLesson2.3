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
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
    
//    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //Alerts
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
    
    @IBAction func logInPressed() {
        if userNameField.text != user || passwordField.text != password {
            let alertController = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (action) in }
            
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    
}


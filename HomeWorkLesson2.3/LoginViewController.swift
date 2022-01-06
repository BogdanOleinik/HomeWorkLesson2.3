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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.text = user
    }
    
    //Alerts
    @IBAction func forgotUserName(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your name is \(user)")
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func logInPressed() {
        if userNameField.text != user || passwordField.text != password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}





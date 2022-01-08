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
    
    private let user = User.getUserData()
    private let aboutMe = AboutMe.getAboutMe()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tapBarController = segue.destination as? UITabBarController else { return }
        guard let viewController = tapBarController.viewControllers else { return }
        
        for viewController in viewController {
            if let welcomVC = viewController as? WelcomeViewController {
                welcomVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                let userInfoVC = navigationVC.topViewController as! UserInfoViewController
                userInfoVC.user = user
                userInfoVC.aboutMe = aboutMe
            }
        }
    }
    
    //Alerts
    @IBAction func forgotUserName(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your name is \(user.login)")
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        showAlert(title: "Oops!", message: "Your password is \(user.password)")
    }
    
    @IBAction func logInPressed() {
        if userNameField.text != user.login || passwordField.text != user.password {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
    
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (action) in }
       
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
}





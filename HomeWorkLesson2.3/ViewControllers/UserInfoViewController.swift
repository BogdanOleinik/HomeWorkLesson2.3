//
//  UserInfoViewController.swift
//  HomeWorkLesson2.3
//
//  Created by Богдан Олейник on 08.01.2022.
//

import UIKit

class UserInfoViewController: UIViewController {

    @IBOutlet var aboutMeLabel: UILabel!
    
    var user: User!
    var aboutMe: AboutMe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = user.person.fullname
        aboutMeLabel.text = aboutMe.aboutPerson
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let imageVC = segue.destination as? ImageViewController else { return }
        imageVC.user = user
    }
}

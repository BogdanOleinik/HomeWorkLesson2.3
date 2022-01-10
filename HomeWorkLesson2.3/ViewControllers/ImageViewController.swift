//
//  ImageViewController.swift
//  HomeWorkLesson2.3
//
//  Created by Богдан Олейник on 10.01.2022.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: user.person.image)
    }
}

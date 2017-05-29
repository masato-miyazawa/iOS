//
//  NextViewController.swift
//  NavigationIBDemo
//
//  Created by Derrick Park on 2017-05-29.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var bgImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        bgImage.image = UIImage(named: "dining_room.jpg")
        // Do any additional setup after loading the view.
    }

}

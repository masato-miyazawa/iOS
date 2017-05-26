//
//  ViewController2.swift
//  NavigationDemo
//
//  Created by Derrick Park on 2017-05-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    let button: UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        button.backgroundColor = UIColor.cyan
        button.addTarget(self, action: #selector(popVC), for: .touchUpInside)
        view.addSubview(button)
        
        self.navigationController?.isToolbarHidden = false
        
        // Do any additional setup after loading the view.
    }
    
    func popVC() {
        self.navigationController?.popViewController(animated: true)
    }
    

}

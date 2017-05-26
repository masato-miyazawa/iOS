//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Derrick Park on 2017-05-26.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = false
        
        button.backgroundColor = UIColor.cyan
        button.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
        view.addSubview(button)
        view.backgroundColor = UIColor.blue

    }
    func nextVC(_ sender: UIButton) {
        let secondVC = ViewController2()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    
    

}


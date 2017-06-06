//
//  ViewController.swift
//  UserDefaultDemo
//
//  Created by Derrick Park on 2017-06-06.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ison = UserDefaults.standard.value(forKey: "ison")
        if ison as! Bool {
            mySwitch.setOn(true, animated: true)
            view.backgroundColor = UIColor.blue
        } else {
            mySwitch.setOn(false, animated: true)
            view.backgroundColor = UIColor.orange
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switch_tapped(_ sender: Any) {
            
        if (mySwitch.isOn) {
            view.backgroundColor = UIColor.blue
            mySwitch.setOn(true, animated: true)
            UserDefaults.standard.set(true, forKey: "ison")
        } else {
            view.backgroundColor = UIColor.orange
            mySwitch.setOn(false, animated: true)
            UserDefaults.standard.set(false, forKey: "ison")
        }
    }



}


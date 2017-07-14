//
//  ViewController.swift
//  TextViewDemo
//
//  Created by Derrick Park on 2017-05-31.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
//        let startingLength = textField.text?.characters.count ?? 0
//        let lengthToAdd = string.characters.count
//        
//        let newLength = startingLength + lengthToAdd
//        let charactersNotAllowed = NSCharacterSet.punctuationCharacters
        
        let charatersAllowed = NSCharacterSet(charactersIn: "ufkc")
        if string.isEmpty {
            return true
        }
        if string.rangeOfCharacter(from: charatersAllowed as CharacterSet) != nil{
            return true
        } else {
            return false
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
    

}


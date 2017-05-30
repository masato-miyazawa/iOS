//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Derrick Park on 2017-05-30.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let swipeRightRec = UISwipeGestureRecognizer()
    let swipeLeftRec = UISwipeGestureRecognizer()
    let swipeUpRec = UISwipeGestureRecognizer()
    let swipeDownRec = UISwipeGestureRecognizer()
    let pinchRec = UIPinchGestureRecognizer()
    
    let rotateRec = UIRotationGestureRecognizer()
    let tapRec = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeRightRec.direction = UISwipeGestureRecognizerDirection.right
        swipeLeftRec.direction = UISwipeGestureRecognizerDirection.left
        swipeUpRec.direction = .up
        swipeDownRec.direction = .down
        
        swipeRightRec.addTarget(self, action: #selector(swipedRight))
        swipeLeftRec.addTarget(self, action: #selector(swipedLeft))
        swipeUpRec.addTarget(self, action: #selector(swipedUp))
        swipeDownRec.addTarget(self, action: #selector(swipedDown))
        
        
        tapRec.numberOfTouchesRequired = 2
        tapRec.numberOfTapsRequired = 2
        tapRec.addTarget(self, action: #selector(doubleTapWithTwoFingers))
        
        rotateRec.addTarget(self, action: #selector(rotated(sender:)))
        
        
        self.view.addGestureRecognizer(rotateRec)
        self.view.addGestureRecognizer(tapRec)
        self.view.addGestureRecognizer(swipeRightRec)
        self.view.addGestureRecognizer(swipeLeftRec)
        self.view.addGestureRecognizer(swipeUpRec)
        self.view.addGestureRecognizer(swipeDownRec)
    }
    
    func rotated(sender: UIRotationGestureRecognizer) {
        if (sender.state == .began) {
            print("began rotating")
        } else if (sender.state == .changed) {
            print("changed")
            print("Rotation value: \(sender.rotation)")
            print("Velocity value: \(sender.velocity)")
        } else if (sender.state == .ended) {
            print("Ended rotating")
        }
    }
    
    func doubleTapWithTwoFingers() {
        
        print("doubleTapWithTwoFingers!")
    }
    
    func swipedRight() {
        print("Right!")
    }
    
    func swipedLeft() {
        print("Left!")
    }
    func swipedUp() {
        print("Up!")
    }
    func swipedDown() {
        print("Down!")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


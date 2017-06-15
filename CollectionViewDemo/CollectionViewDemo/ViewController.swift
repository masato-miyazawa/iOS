//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Derrick Park on 2017-06-14.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var myCollectionView: UICollectionView!
    let names = ["Masato", "Ko", "Masa", "Soohitta", "Aya", "Mattia", "Luis", "Mitchinobu", "YOSHI", "KEN", "HIROKI"]
    let images = ["1", "2","3","4","5","6","7","8","9","10","11"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let secondVC = UIViewController()
        let imageV = UIImageView(frame: secondVC.view.frame)
        imageV.image = UIImage(named: images[indexPath.row])
        secondVC.view.addSubview(imageV)
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCollectionViewCell
        
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        cell.myLabel.text = names[indexPath.row]
        cell.backgroundColor = UIColor.yellow
        
        return cell
    }
    
    
    


}











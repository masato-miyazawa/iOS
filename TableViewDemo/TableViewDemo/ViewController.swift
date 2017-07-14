//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Derrick Park on 2017-06-05.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var fruits: [String] = []
    let cellIdentifier = "CellIndentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruits = ["Apple", "Watermelon", "Pineapple", "Banana", "Pear", "Kiwi"]
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        
        view.addSubview(tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = fruits[indexPath.row]
        
        return cell
    }
    

}









//
//  ViewController.swift
//  TodoCoreData
//
//  Created by Derrick Park on 2017-07-27.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var todos: [NSManagedObject] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Todo")
        
        do {
            todos = try managedContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Can not fetch \(error).")
        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let todo = todos[indexPath.row]
        cell.textLabel?.text = todo.value(forKeyPath: "name") as? String
        
        return cell
    }
    
    @IBAction func addTodo(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "New Todo", message: "Add a Todo", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { (action) in
            guard let textField = alert.textFields?.first, let todo = textField.text else
            { return }
            self.save(name: todo)
            self.tableView.reloadData()
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addTextField()
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    func save(name: String) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Todo", in: managedContext)!
        
        let todo = NSManagedObject(entity: entity, insertInto: managedContext)
        todo.setValue(name, forKeyPath: "name")
        
        do {
            try managedContext.save()
            todos.append(todo)
        } catch let error as NSError {
            print("Can not save. \(error)")
        }
    }
}


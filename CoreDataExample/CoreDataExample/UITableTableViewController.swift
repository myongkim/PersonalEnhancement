//
//  UITableTableViewController.swift
//  CoreDataExample
//
//  Created by Isaac Kim on 09/01/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit
import CoreData


class UITableTableViewController: UITableViewController {

    let firstNames = ["Jane", "John", "Stephen", "Stacy", "Taylor", "Alex", "Eren"]
    let lastNames = ["White", "Black", "Fox", "Jones", "King", "McQueen", "Yeager"]
    let ages = [25,26,20,30,27,28,23]
    var people = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        
        do {
            let results = try managedContext.fetch(fetchRequest)
            people = results as! [NSManagedObject]
        } catch let error as NSError {
            print("Fetching error: \(error.userInfo)")
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return people.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // using coredata to save it
        let person = people[indexPath.row]
        let firstName = person.value(forKey: "firstName")
        let lastName = person.value(forKey: "lastName")
        let age = person.value(forKey: "age")
        cell.textLabel?.text = "\(firstName!) \(lastName!) age \(age!)"
        return cell
        
    }
    
    // initial state is data will be lost if we kill the app
    @IBAction func addButtonWasTapped(sender: UIBarButtonItem) {
        let randomFirstName = firstNames[Int(arc4random_uniform(UInt32(firstNames.count)))]
        let randomLastName = lastNames[Int(arc4random_uniform(UInt32(lastNames.count)))]
        let randomAge = ages[Int(arc4random_uniform(UInt32(ages.count)))]
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Person", in: context)
        
        let person = NSManagedObject(entity: entity!, insertInto: context)
        person.setValue(randomFirstName, forKey: "firstName")
        person.setValue(randomLastName, forKey: "lastName")
        person.setValue(randomAge, forKey: "age")
        appDelegate.saveContext()
        people.append(person)
        
        self.tableView.reloadData()
    }


}

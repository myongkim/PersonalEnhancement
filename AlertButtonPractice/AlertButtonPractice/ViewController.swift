//
//  ViewController.swift
//  AlertButtonPractice
//
//  Created by Isaac Kim on 03/04/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    
    var displayNumber = 0
    
    var message = "Do you want to add the number?"
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Add more", message: message, preferredStyle: .alert)
        

        alert.addTextField { (text) in
            text.placeholder = "how much do you want to add?"
            if let textField = alert.textFields?.first,
            let inputValue = textField.text,
                let number = Int(inputValue) {
                self.displayNumber += number
            }
            
            
        }
        
        alert.addAction(UIAlertAction(title: "Add Count", style: .default, handler: { (_) in
            
            if let textField = alert.textFields?.first,
                let inputValue = textField.text,
                let number = Int(inputValue) {
                self.displayNumber += number
                self.displayLabel.text = "\(self.displayNumber)"
            } else {
            self.displayNumber += 1
            self.displayLabel.text = "\(self.displayNumber)"
            }
            }
        ))
            
        alert.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (_) in
            self.displayNumber = 0
            self.displayLabel.text = "\(self.displayNumber)"
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
        
    }
    

}


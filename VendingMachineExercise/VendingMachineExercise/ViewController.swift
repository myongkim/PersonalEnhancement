//
//  ViewController.swift
//  VendingMachineExercise
//
//  Created by Isaac Kim on 03/04/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var depositLabel: UILabel!
    
//    var amount = 0
    var depositedAmount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        messageLabel.text = ""
    }

    @IBAction func buttonDidTap(_ sender: UIButton) {
        print("button Has tapped")
        
        if depositedAmount >= 1500 {
            depositedAmount -= 1500
            depositLabel.text = "$\(depositedAmount)"
            messageLabel.text = "You ordered coffee"
            
        } else {
            messageLabel.text = "You don't have enough money, Please add more money"
        }
        
    }
    @IBAction func addMoneyTapped(_ sender: UIButton) {
        print("addMoney has been tapped")
//        amount += 500
        depositedAmount += 500
        depositLabel.text = "$\(depositedAmount)"
    }
    
    @IBAction func returnButtonTapped(_ sender: UIButton) {
        print("returnbutton has tapped")
        messageLabel.text = "\(depositedAmount) has been returned"
        
        depositedAmount = 0
        depositLabel.text = "$\(depositedAmount)"
        
        
        
    }
}


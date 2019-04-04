//
//  ViewController.swift
//  PassingDataToViewController
//
//  Created by Isaac Kim on 03/04/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstViewNumber: UILabel!
    
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        
    }

    private func setup() {
        firstViewNumber.text = "\(number)"
        
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        
        secondVC.number += 1
        
        present(secondVC, animated: true, completion: nil)
        
    }
 

    
}


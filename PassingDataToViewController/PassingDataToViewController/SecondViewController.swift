//
//  SecondViewController.swift
//  PassingDataToViewController
//
//  Created by Isaac Kim on 03/04/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondViewNumber: UILabel!
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    private func setup() {
        secondViewNumber.text = "\(number)"
        
    }
    
    @IBAction func buttonDidTapped(_ sender: UIButton) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "firstViewController") as! FirstViewController
        firstVC.number = number + 10
        number = number + 10
        present(firstVC, animated: true, completion: nil)
        
        
    }
    
}

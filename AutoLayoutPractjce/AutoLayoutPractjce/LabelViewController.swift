//
//  LabelViewController.swift
//  AutoLayoutPractjce
//
//  Created by Isaac Kim on 13/02/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class LabelViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var savedMessage: String = "Empty String"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = savedMessage
    }
    
    


}

//
//  ViewController.swift
//  proejct1
//
//  Created by Isaac Kim on 03/04/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("nssl") {
                pictures.append(item)
                
                
            }
        }
        print(pictures)
        
    }


}


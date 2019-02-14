//
//  ViewController.swift
//  AutoLayoutPractjce
//
//  Created by Isaac Kim on 08/01/2019.
//  Copyright © 2019 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var firstViewHeightProportion: NSLayoutConstraint!
    @IBOutlet weak var fourthView: UIView!
    
    var savedMonth: String = ""
    
    @IBOutlet weak var pickerView: UIPickerView!
    let months: [String] = ["January","Febuary","March","April","May","June","July","August","September","October","November","December"]
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
        
        
        
    }

    func setup() {
        var firstViewHeightValue = firstViewHeightProportion.constant
        firstViewHeightValue = (mainView.frame.height * 0.2) - 5
        
        print("firstViewheight:", firstViewHeightValue)
        print("mainvieHeight:", mainView.frame.height)
        
        // setup FourthView Label
        let monthLabel = UILabel(frame: CGRect(x: 0, y: 0, width: fourthView.frame.width, height: fourthView.frame.height))
        monthLabel.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        monthLabel.textAlignment = .center
        monthLabel.text = "Please choose your month"
        monthLabel.alpha = 0.5
        fourthView.addSubview(monthLabel)
    }
    
    @IBAction func goingToSecondPage(_ sender: Any) {
        print(savedMonth)
        
        let labelVC = storyboard?.instantiateViewController(withIdentifier: "LableViewController") as! LabelViewController
        labelVC.savedMessage = savedMonth
        present(labelVC, animated: true, completion: nil)
        
        
        
    }
    

}
extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
        
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        savedMonth = months[row]
        return months[row]
        
    }
    
    
}
extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        let rowHeight: CGFloat = 50
        return rowHeight
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("row:", months[row])
  
        let monthLabel = UILabel(frame: CGRect(x: 0, y: 0, width: fourthView.frame.width, height: fourthView.frame.height))
        monthLabel.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        monthLabel.textAlignment = .center
        fourthView.addSubview(monthLabel)
        monthLabel.text = months[row]
        
    }
    
}


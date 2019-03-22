//
//  ViewController.swift
//  colorPicker
//
//  Created by Chris Harling on 3/22/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    var colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    
    override func viewDidLoad() {
        var firstColor = 0
        pickerView.selectRow(0, inComponent: 0, animated: true)
        if (firstColor == 0){
            self.view.backgroundColor = UIColor.red
            label.text = "Red"
            firstColor += 1
        }
        super.viewDidLoad()
        
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = colors[row]
        
        if(row == 0){
            self.view.backgroundColor = UIColor.red
        }
        if(row == 1){
            self.view.backgroundColor = UIColor.orange
        }
        if(row == 2){
            self.view.backgroundColor = UIColor.yellow
        }
        if(row == 3){
            self.view.backgroundColor = UIColor.green
        }
        if(row == 4){
            self.view.backgroundColor = UIColor.blue
        }
        if(row == 5){
            self.view.backgroundColor = UIColor.purple
        }
        
    }
}


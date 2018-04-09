//
//  SecondViewController.swift
//  PetZ!
//
//  Created by McKinney family  on 3/27/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBAction func ageButton(_ sender: Any) {
    
    let ageInDogYears = Int(ageTextField.text!)! * 7
        
        ageLabel.text = String(ageInDogYears)
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn( textField: UITextField) -> Bool {
        
        ageTextField.resignFirstResponder()
        
        return true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}


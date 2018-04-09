//
//  FirstViewController.swift
//  PetZ!
//
//  Created by McKinney family  on 3/27/18.
//  Copyright © 2018 FasTek Technologies. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var catAgeTextField: UITextField!
    
    @IBOutlet weak var catAgeLabel: UILabel!
    
    @IBAction func catSubmitButton(_ sender: Any) {
        
        let ageInCatYears = Int(catAgeTextField.text!)! * 5
        
        catAgeLabel.text = String(ageInCatYears)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn( textField: UITextField) -> Bool {
        
        catAgeTextField.resignFirstResponder()
        
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


//
//  ViewController.swift
//  FoodTracker
//
//  Created by William Kwon on 2/5/20.
//  Copyright © 2020 William Kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field's user input through delegate callblanks
        nameTextField.delegate = self
    }

// MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}


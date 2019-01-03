//
//  ViewController.swift
//  tippy
//
//  Created by Wiliam Kwon on 12/23/18.
//  Copyright © 2018 Wiliam Kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipcontent: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap( sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip( sender: AnyObject) {
        let tippercentage = [0.18,0.2,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tippercentage[tipcontent.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }
}


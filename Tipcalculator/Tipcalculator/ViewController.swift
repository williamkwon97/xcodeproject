//
//  ViewController.swift
//  Tipcalculator
//
//  Created by Wiliam Kwon on 12/27/18.
//  Copyright © 2018 Wiliam Kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onetip: UILabel!
    @IBOutlet weak var twotip: UILabel!
    @IBOutlet weak var threetip: UILabel!
    @IBOutlet weak var fourtip: UILabel!
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var oneperson: UILabel!
    @IBOutlet weak var threepeople: UILabel!
    @IBOutlet weak var twopeople: UILabel!
    @IBOutlet weak var fourpeople: UILabel!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    @IBAction func EUY(_ sender: Any) {
        let bill = Double(BillField.text!) ?? 0
        let Euro = bill * 1.15
    }
    
    var savedText: String!
    
    func textFieldShouldReturn(BillField: UITextField) -> Bool {
        savedText = BillField.text
        BillField.resignFirstResponder()
        return false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.BillField.becomeFirstResponder()
    
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Gesture(_ sender: Any) {
        view.endEditing(true)
        
    }
    
    
    @IBAction func CalculateTip (_ sender: Any) {
        let tippercentage = [0.15,0.18,0.20]
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * tippercentage[tipcontrol.selectedSegmentIndex]
        let onepersonbill = bill + tip
        let twopeoplebill = (bill + tip)/2
        let threepeoplebill = (bill + tip)/3
        let fourpeoplebill = (bill + tip)/4
        
        oneperson.text = String(format: "$%.2f",onepersonbill)
        twopeople.text = String(format: "$%.2f",twopeoplebill)
        threepeople.text = String(format: "$%.2f",threepeoplebill)
        fourpeople.text = String(format:"$%.2f",fourpeoplebill)
        onetip.text = String(format: "$%.2f",tip)
        twotip.text = String(format: "$%.2f",tip/2)
        threetip.text = String(format: "$%.2f",tip/3)
        fourtip.text = String(format:"$%.2f",tip/4)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
   
}


//
//  ViewController.swift
//  Tally
//
//  Created by Andrew Higbee on 9/30/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var intervalTextBox: UITextField!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        intervalTextBox.text = "1"
    }

    @IBAction func counterButton(_ sender: UIButton) {
        guard let counterNumString = counterLabel.text else { return }
        guard var counterNum = Double(counterNumString) else { return }
        guard let intervalNumString = intervalTextBox.text else { return }
        guard let intervalNum = Double(intervalNumString) else { counterLabel.text = "Please enter a number."
            return
        }
        
        counterNum += intervalNum
        
        if counterLabel.text == "Please enter a number." {
            counterLabel.text = "0"
        } else if floor(counterNum) == counterNum {
            counterLabel.text = String(Int(counterNum))
        } else {
            counterLabel.text = String(counterNum)
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        counterLabel.text = "0"
        //intervalTextBox.text = ""
    }
}


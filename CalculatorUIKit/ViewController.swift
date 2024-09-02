//
//  ViewController.swift
//  CalculatorUIKit
//
//  Created by Abouzar Moradian on 8/30/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath: Bool = false
    var operation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(0)
        
    }

    @IBAction func buttons(_ sender: UIButton) {
        
        
    }
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath{
            
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(sender.tag - 1)
            performingMath = false
        }else{
            
            if let currentText = label.text{
                label.text = currentText + String(sender.tag - 1)
                numberOnScreen = Double(label.text!)!
            }
        }
    }
    
}


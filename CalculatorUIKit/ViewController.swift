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
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 { //Divide
                
                label.text = "/"
                
            }
            
            if sender.tag == 13 { //Multiply
                
                label.text = "x"
                
            }
            
            if sender.tag == 14 { //Subtract
                
                label.text = "-"
                
            }
            
            if sender.tag == 15 { //Add
                
                label.text = "+"
                
            }
            
            operation = sender.tag
            
            performingMath = true
            
        }
        
        else if sender.tag == 16 {
            
            if operation == 12{ //Divide
                
                label.text = String(previousNumber / numberOnScreen)
                
            }
            
            else if operation == 13{ //Multiply
                
                label.text = String(previousNumber * numberOnScreen)
                
            }
            
            else if operation == 14{ //Subtract
                
                label.text = String(previousNumber - numberOnScreen)
                
            }
            
            else if operation == 15{ //Add
                
                label.text = String(previousNumber + numberOnScreen)
                
            }
            
        }
        
        else if sender.tag == 11{
            
            label.text = ""
            
            previousNumber = 0
            
            numberOnScreen = 0
            
            operation = 0
            
        }
        
        
        
        
        
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


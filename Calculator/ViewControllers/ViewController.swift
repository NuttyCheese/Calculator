//
//  ViewController.swift
//  Calculator
//
//  Created by Борис Павлов on 04.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var allButtons: [UIButton]!
    @IBOutlet weak var resultLabel: UILabel!
    
    var firstNumber: Double = 0
    var nextNumber: Double = 0
    var operation : Int = 0
    var arithmeticalSign: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionNumbers(_ sender: UIButton) {
        if arithmeticalSign == true {
            resultLabel.text = String(sender.tag)
        } else {
            resultLabel.text = resultLabel.text! + String(sender.tag)
        }
        nextNumber = Double(resultLabel.text!)!
    }
    
    @IBAction func actionArithmetical(_ sender: UIButton) {
        
        if resultLabel.text != "" && sender.tag != 10 && sender.tag != 17{
            firstNumber = Double(resultLabel.text!)!
            if sender.tag == 11 {
                resultLabel.text = "+"
            }else if sender.tag == 12 {
                resultLabel.text = "-"
            }else if sender.tag == 13 {
                resultLabel.text = "*"
            }else if sender.tag == 14 {
                resultLabel.text = "/"
            }else if sender.tag == 12 {
                
            }
            operation = sender.tag
            arithmeticalSign = true
        } else if sender.tag == 10 {
            if operation == 11 {
                resultLabel.text = String(firstNumber + nextNumber)
            }else if operation == 12 {
                resultLabel.text = String(firstNumber - nextNumber)
            }else if operation == 13 {
                resultLabel.text = String(firstNumber * nextNumber)
            }else if operation == 14 {
                resultLabel.text = String(firstNumber / nextNumber)
            }
        }else if sender.tag == 17 {
            resultLabel.text = ""
            firstNumber = 0
            nextNumber = 0
            operation = 0
        }
        
    }
}

/*
 =-10
 +-11
 --12
 *-13
 /-14
 %-15
 +/--16
 ac-17
 .-18
 */

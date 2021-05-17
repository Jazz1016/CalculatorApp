//
//  CalculatorViewController.swift
//  calculator-Proj
//
//  Created by James Lea on 5/17/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var outputBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Properties
    var operater = ""
    var number: Double = 0.0
    
    // MARK: - Actions
    @IBAction func oneButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "1")
    }
    
    @IBAction func twoButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "2")
    }
    
    @IBAction func threeButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "3")
    }
    
    @IBAction func fourButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "4")
    }
    
    @IBAction func fiveButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "5")
    }
    
    @IBAction func sixButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "6")
    }
    
    @IBAction func sevenButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "7")
    }
    
    @IBAction func eightButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "8")
    }
    
    @IBAction func nineButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "9")
    }
    
    @IBAction func zeroButtonWasTapped(_ sender: Any) {
        addNumberToOutputBox(number: "0")
    }
    
    @IBAction func plusButtonWasTapped(_ sender: Any) {
        guard let outputBox = outputBox.text else {return}
        
        number = Double(outputBox)! + number
        self.outputBox.text = ""
        self.operater = "+"
    }
    
    @IBAction func minusButtonWasTapped(_ sender: Any) {
        guard let outputBox = outputBox.text else {return}
        
        number = Double(outputBox)! - number
        self.outputBox.text = ""
        self.operater = "-"
    }
    
    @IBAction func multiplyButtonWasTapped(_ sender: Any) {
        guard let outputBox = outputBox.text else {return}
        
        number = Double(outputBox)! * number
        self.outputBox.text = ""
        self.operater = "x"
    }
    
    @IBAction func divideButtonWasTapped(_ sender: Any) {
        guard let outputBox = outputBox.text else {return}
        
        number = Double(outputBox)! / number
        self.outputBox.text = ""
        self.operater = "/"
    }
    
    @IBAction func equalButtonWasTapped(_ sender: Any) {
        guard let outputBox = outputBox.text else {return}
        if operater == "+" {
            self.outputBox.text = "\(Double(outputBox)! + number)"
        } else if operater == "-" {
            self.outputBox.text = "\(Double(outputBox)! - number)"
        } else if operater == "x" {
            self.outputBox.text = "\(Double(outputBox)! * number)"
        } else if operater == "/" {
            self.outputBox.text = "\(Double(outputBox)! / number)"
        }
    }
    
    // MARK: - Functions
    
    func addNumberToOutputBox(number: String) {
        outputBox.text = "\(outputBox.text ?? "")\(number)"
    }
    
    func operatorButtonTapped(operationValue: String){
    }
    
}

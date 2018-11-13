// Created on November-2018
// Created by Christian Briglio 
// Created for ICS3U
// This program turns a level into a percentage 
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionLabel = UILabel()
    let calculateButton = UIButton()
    let answerLabel = UILabel()
    var numberTextField = UITextField()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionLabel.text = "enter a level R-4"
        view.addSubview(instructionLabel)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = "Enter level"
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        calculateButton.setTitle("calculate", for: .normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.titleLabel?.textAlignment = .center
        calculateButton.addTarget(self, action: #selector(findPercentage), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.topAnchor.constraint(equalTo: numberTextField.bottomAnchor, constant: 20).isActive = true
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
    }
    
    @objc func findPercentage() {
        var level = (numberTextField.text)
        
        if level == "R" {
            level = "30%"
        }
        else if level == "1-" {
            level = "51%"
        }
        else if level == "1"{
            level = "55%"
        }
        else if level == "1+" {
            level = "58%"
        }
        else if level == "2-"{
            level = "61%"
        }
        else if level == "2" {
            level = "65%"
        }
        else if level == "2+"{
            level = "68%"
        }
        else if level == "3-"{
            level = "71%"
        }
        else if level == "3" {
            level = "75%"
        }
        else if level == "3+"{
            level = "78%"
        }
        else if level == "4-"{
            level = "83%"
        }
        else if level == "4" {
            level = "91%"
        }
        else if level == "4+"{
            level = "98%"
        }
        answerLabel.text = level
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

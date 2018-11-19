// Created on: 19-Nov-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program checks to see if two strings are the same, if you ignore capitals and lowercase
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let string1TextField = UITextField()
    let string2TextField = UITextField()
    let convertButton = UIButton ()
    let answerLabel = UILabel()
    
    func checkingSentances(sentance1Entered : String, sentance2Entered : String) -> String{
        //  
        
        var firstSentance = (sentance1Entered.uppercased())
        var secondSentance = (sentance2Entered.uppercased())
        var sameOrNah = "?"
        
        if firstSentance == secondSentance{
            sameOrNah = "True"
        }
        else {
            sameOrNah = "False"
        }
        
        return sameOrNah
    }
        
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Please enter two strings, and we will tell you if they are the same or not."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        string1TextField.borderStyle = UITextField.BorderStyle.roundedRect
        string1TextField.placeholder = "   "
        view.addSubview(string1TextField)
        string1TextField.translatesAutoresizingMaskIntoConstraints = false
        string1TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        string1TextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        string2TextField.borderStyle = UITextField.BorderStyle.roundedRect
        string2TextField.placeholder = "   "
        view.addSubview(string2TextField)
        string2TextField.translatesAutoresizingMaskIntoConstraints = false
        string2TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        string2TextField.bottomAnchor.constraint(equalTo: string1TextField.topAnchor, constant: 80).isActive = true
        
        convertButton.setTitle("Check", for: UIControl.State.normal)
        convertButton.setTitleColor(.blue, for: .normal)
        convertButton.addTarget(self, action: #selector(checkButton), for: .touchUpInside)
        view.addSubview(convertButton)
        convertButton.translatesAutoresizingMaskIntoConstraints = false
        convertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        convertButton.topAnchor.constraint(equalTo: string2TextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: convertButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func checkButton() {
        //  
        
        var sentance1 : String = (string1TextField.text!)
        var sentance2 : String = (string2TextField.text!)
        
        var answer = checkingSentances(sentance1Entered: String(sentance1), sentance2Entered: String(sentance2))
        
        answerLabel.text = "\(answer)"
        
    }
        override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

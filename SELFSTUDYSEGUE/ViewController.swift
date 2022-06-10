//
//  ViewController.swift
//  SELFSTUDYSEGUE
//
//  Created by Ömer Faruk Kılıçaslan on 9.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var sourceName:String = ""

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
        
        
    }
    
    
    func isFieldEmpty(field: UITextField) -> Bool {
        
        if field.text == "" {
            return false
        }
        else {
            return true
        }
    }

    @IBAction func sendButton(_ sender: Any) {
        
        if isFieldEmpty(field: nameTextField) == false {
            warningLabel.isHidden = false
            warningLabel.text = "Missing Fields"
        }
        else if isFieldEmpty(field: surnameTextField) == false {
            warningLabel.isHidden = false
            warningLabel.text = "Missing Fields"
        }
        else if isFieldEmpty(field: emailTextField) == false {
            warningLabel.isHidden = false
            warningLabel.text = "Missing Fields"
        }
        else if isFieldEmpty(field: passwordTextField) == false {
            warningLabel.isHidden = false
            warningLabel.text = "Missing Fields"
        }
        else{
            if nameTextField.text != nil{
                sourceName = nameTextField.text!
                performSegue(withIdentifier: "toSecondView", sender: nil)
            }
                    
                    
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.targetName = sourceName
    }
}


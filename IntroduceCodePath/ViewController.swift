//
//  ViewController.swift
//  IntroduceCodePath
//
//  Created by Daniel Sawyer on 12/29/22.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var FirstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    @IBOutlet weak var SchoolTextField: UITextField!
    @IBOutlet weak var MajorTextField: UITextField!
    @IBOutlet weak var YearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var MorePetsSwitch: UISwitch!
    
    @IBAction func IntroduceButtonPressed(_ sender: UIButton) {
        let year = YearSegmentedControl.titleForSegment(at: YearSegmentedControl.selectedSegmentIndex)
        
        var introduction = "My name is \(FirstNameTextField.text!) \(LastNameTextField.text!) and I attend \(SchoolTextField.text!). I am in my \(year!) year and my area of study is \(MajorTextField.text!). I currently have \(PetCounterLabel.text!) pets and "
        
        if(MorePetsSwitch.isOn){
            introduction += "I want to have more!"
        }
        else{
            introduction += "I dont want any more."
        }
        
        let alertController = UIAlertController(title: "My introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func PetStepper(_ sender: UIStepper) {
        PetCounterLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var PetCounterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    

}


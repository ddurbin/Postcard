//
//  ViewController.swift
//  Postcard
//
//  Created by DANIEL DURBIN on 2/8/15.
//  Copyright (c) 2015 DANIEL DURBIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //this is a comment to test git commit
        if(enterNameTextField.text.isEmpty && enterMessageTextField.text.isEmpty){
            return
        }
        nameLabel.hidden = false
        messageLabel.hidden = false
        nameLabel.text = "From: " + enterNameTextField.text
        messageLabel.text = "Message: " + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
    }
    
}


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
    @IBOutlet weak var enterNameTextFIeld: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

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
        if(enterNameTextFIeld.text.isEmpty && enterMessageTextField.text.isEmpty){
            return
        }
        messageLabel.hidden = false
        messageLabel.text = enterNameTextFIeld.text + ":\n" + enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
    }
    
}


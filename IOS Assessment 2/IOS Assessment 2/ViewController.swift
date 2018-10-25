//
//  ViewController.swift
//  IOS Assessment 2
//
//  Created by Miranda Jessie on 10/25/18.
//  Copyright © 2018 Miranda Jessie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var firstNameText: UITextField!
    
    @IBOutlet weak var lastNameText: UITextField!
    
    @IBOutlet weak var emailText: UITextField!

    @IBAction func submitButtonTapped(_ sender: Any) {
        guard
        let firstName = firstNameText.text, !firstName.isEmpty,
        let lastName = lastNameText.text, !lastName.isEmpty,
        let email = emailText.text, !email.isEmpty
            else {
                let errorAlert = UIAlertController(title: "Error", message: "You did not feel all the slots in.", preferredStyle: UIAlertController.Style.alert)
                let dissmissAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default)
                {UIAlertAction in}
                errorAlert.addAction(dissmissAction)
                self.present(errorAlert, animated: true, completion: nil)
                return
        }
        let newPerson = person(firstName: firstNameText.text!, lastName: lastNameText.text!, email: emailText.text!)
        
        let submitAlert = UIAlertController(title: "Greetings", message: "Hello, \(newPerson.firstName) \(newPerson.lastName)! Your email is \(newPerson.email).", preferredStyle: .alert)
        let thanksAction = UIAlertAction(title: "Thanks!", style: UIAlertAction.Style.default)
        submitAlert.addAction(thanksAction)
        self.present(submitAlert, animated: true, completion: nil)
    }
    }



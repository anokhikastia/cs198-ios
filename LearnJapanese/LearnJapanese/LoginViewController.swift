//
//  LoginViewController.swift
//  LearnJapanese
//
//  Created by Anokhi Kastia on 9/15/19.
//  Copyright © 2019 Anokhi Kastia. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Login: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var LogInSignUp: UISegmentedControl!
    
    var users: [String : String]
    
    @IBAction func LogInSignUpAction(_ sender: Any) {
        switch LogInSignUp.selectedSegmentIndex {
        case 0:
            if let val = users[Login.text!] {
                
            } else {
                
            }
        default:
            break;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Login.text = "";
        Password.text = "";
        users = []
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

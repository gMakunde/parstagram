//
//  LoginViewController.swift
//  Finstagram
//
//  Created by George Martin on 3/4/20.
//  Copyright © 2020 Developer Student Club Morgan State. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    

    
    @IBAction func onSignin(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password)
        { (user, error) in
            if user != nil{
            self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("error: \(error?.localizedDescription)")
            }
        }
    }
    @IBAction func onSignup(_ sender: Any) {
        let user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
        // other fields can be set just like with PFObject
        user.signUpInBackground { (sucess, error) in
            if sucess{
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else{
                print("error: \(error?.localizedDescription)")
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

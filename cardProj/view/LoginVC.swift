//
//  LoginVC.swift
//  cardProj
//
//  Created by Bradley Calkins on 9/8/21.
//

import UIKit
import Firebase


class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    
    @IBAction func signIn(_ sender: Any)
    {
        var usertoReturn: FlashCardUser
        
        guard let email = emailTF.text else {return}
        guard let username = usernameTF.text else {return}
        Auth.auth().signIn(withEmail: email, password: username) { (user, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let user = user {                
            }
        }
        
        let currentUser = loggedInUser(name: username, email: email)
        FlashCardManager.shared.currentUser = currentUser
        
    }
    @IBAction func signUp(_ sender: Any) {
        guard let email = emailTF.text else {return}
        guard let username = usernameTF.text else {return}
        Auth.auth().createUser(withEmail: email, password: username) { (user, error) in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let user = user {
                
            }
        }
    }
    @IBAction func guest(_ sender: Any) {
        FlashCardManager.shared.currentUser = guestUser()
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

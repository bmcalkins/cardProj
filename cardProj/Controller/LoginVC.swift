//
//  LoginVC.swift
//  cardProj
//
//  Created by Bradley Calkins on 9/8/21.
//

import UIKit
import Firebase
import FirebaseDatabase


class LoginVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var errorLabel: UILabel!
   
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
<<<<<<< Updated upstream:cardProj/Controller/LoginVC.swift
    @IBAction func signIn(_ sender: Any) {
=======
    @IBAction func signIn(_ sender: Any)
    {        
>>>>>>> Stashed changes:cardProj/view/LoginVC.swift
        guard let email = emailTF.text else {return}
        guard let username = usernameTF.text else {return}
        Auth.auth().signIn(withEmail: email, password: username) { (result, error) in
            if let error = error {
                self.errorLabel.text = error.localizedDescription
                return
            }
            User.current? = result!.user
            self.navigateGuest()
        }
    }
    @IBAction func signUp(_ sender: Any) {
        guard let email = emailTF.text else {return}
        guard let username = usernameTF.text else {return}
        Auth.auth().createUser(withEmail: email, password: username) { (result, error) in
            if let error = error {
                self.errorLabel.text = error.localizedDescription
                return
            }
            
            User.current? = result!.user
            self.navigateGuest()
            
        }
    }
    @IBAction func guest(_ sender: Any) {
        User.current = nil
        navigateGuest()
    }
    
    
    func navigateGuest() {
        let tabBarVC = UITabBarController()
        let vc1 = FlashCardVC()
        vc1.title = "Cards"
        
        
        let vc2 = AccountVC()
        vc2.title = "Account"
        let vc3 = CreateVC()
        vc3.title  = "Create"
        tabBarVC.setViewControllers([vc1, vc2, vc3], animated: false)
        
        tabBarVC.modalPresentationStyle = .fullScreen
        present(tabBarVC, animated: true)
        
        show(tabBarVC, sender: nil)
        //        let flashCardSB = UIStoryboard(name: "FlashCard", bundle: nil)
        //        let vc = flashCardSB.instantiateViewController(withIdentifier: "FlashCard" )
        //        self.present(vc, animated: true)
        
        
        
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



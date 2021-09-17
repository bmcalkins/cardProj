import UIKit

class AccountVC: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var userScreen: UIView!
    
    
    @IBOutlet weak var guestLabel: UILabel!
    @IBOutlet weak var guestScreen: UIView!
    var loginVC: LoginVC!
    
    @IBAction func signInNav(_ sender: Any) {
        navigateSignIn()
    }
    
   func navigateSignIn() {
        
    loginVC.dismiss(animated: true)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
       
        guestLabel.text = "Please Sign In to see your account"
      
        
        userScreen.isHidden = User.isGuest()
        
        guestScreen.isHidden = !User.isGuest()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based applicat ion, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

import UIKit

class AccountVC: UIViewController {

    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var userScreen: UIView!
    @IBOutlet weak var guestScreen: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Do any additional setup after loading the view.
        topLabel.text = "Please create an account"
        bottomLabel.text = "Or login to Continue"
        
        userScreen.isHidden = User.isGuest()
        
        guestScreen.isHidden = !User.isGuest()
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

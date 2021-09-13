//
//  CreateVC.swift
//  cardProj
//
//  Created by Bradley Calkins on 9/9/21.
//

import UIKit
import Firebase
import FirebaseDatabase

class CreateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
       
     
    }
    
    
    @IBAction func createCard(_ sender: Any) {
        captureCard()
    }
    
    
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var headlineField: UITextField!
    
     
    
//    let formData = Flashcard(
//        description: descriptionField.text!,
//        headline: headlineField.text!
//    )
    
    
    
    func captureCard() {
        
        
        let db = Firestore.firestore()
        var ref: DocumentReference? = nil

        ref = db.collection("flashcard").addDocument(data: [
            "description": descriptionField.text!,
            "headline": headlineField.text!
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
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

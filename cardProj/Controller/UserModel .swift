//
//  UserModel .swift
//  cardProj
//
//  Created by Bradley Calkins on 9/8/21.
//

import Foundation
import Firebase

struct User {
   
    static var current: Firebase.User? = nil
    
    static func isGuest() -> Bool {
        return current == nil
    }
}

public struct Flashcard: Codable {
    
    let description: String
    let headline: String
}



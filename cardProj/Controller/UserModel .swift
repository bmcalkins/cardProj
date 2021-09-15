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


let flashCardsForSetup: [Flashcard] = [
    Flashcard(description: "The Number One", headline: "1"),
    Flashcard(description: "The Number Two", headline: "2"),
    Flashcard(description: "The Number Three", headline: "3"),
    Flashcard(description: "The Number Four", headline: "4"),
    Flashcard(description: "The Number Five", headline: "5"),
    Flashcard(description: "The Number Six", headline: "6"),
    Flashcard(description: "The Number Seven", headline: "7"),
    Flashcard(description: "The Number Eight", headline: "8"),
    Flashcard(description: "The Number Nine", headline: "9"),
    Flashcard(description: "The Number Ten", headline: "10")
    ]


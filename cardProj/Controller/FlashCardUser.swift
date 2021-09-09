//
//  FlashCardUser.swift
//  cardProj
//
//  Created by jason hillegass on 9/9/21.
//

import Foundation
///protocol for flashCardUsers either guest or registered user
protocol FlashCardUser {
    var name: String { get set}
    var email: String {get set}
    
    init(name: String, email: String)
}

struct guestUser: FlashCardUser
{
    var name: String = "Guest"
    var email: String = "guest@gmail.com"
}

struct loggedInUser: FlashCardUser
{
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    
    var name: String
    var email: String
    var isLoggedIn: Bool = false
    var dateStarted: Date?
}
/// handles get and sets for flashCard protocol
extension FlashCardUser
{
    func getName() -> String
    {
        return self.name
    }
    mutating func setName(name: String)
    {
        self.name = name
    }
    
    func getEmail() -> String
    {
        return self.email
    }
    mutating func setEmail(email: String)
    {
        self.email = email
    }
}
/// extension for user to handle getting and setting log in status
extension loggedInUser
{
    func loggedInStatus () -> Bool
    {
        return self.isLoggedIn
    }
    
    mutating func changeLoginStatus()
    {
        self.isLoggedIn = !self.isLoggedIn
    }
    
    func getDateStarted() -> Date
    {
        if (self.dateStarted) == nil
        {
            return self.dateStarted ?? Date()
        }
        return Date()
    }
    
    mutating func setDateStarted(date: Date)
    {
        self.dateStarted = date
    }
}

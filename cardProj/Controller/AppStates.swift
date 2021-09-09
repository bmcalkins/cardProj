//
//  AppStates.swift
//  cardProj
//
//  Created by jason hillegass on 9/9/21.
//

import Foundation
///protocol for determining actions based on user status as guest or registered user
protocol UserViewState
{
    func cardButtonTapped()
    func accountButtonTapped()
    func createButtonTapped()
}
/// struct for registered user implementation of the navigation bar buttons
struct RegisteredViewState: UserViewState {
    var context = FlashCardManager.shared
    let user: FlashCardUser
    
    func cardButtonTapped() {
        //nav to cards
        //refresh
    }
    
    func accountButtonTapped() {
        //nav to accountDetails
        //show nav detail
        //show name
        //show date flashCardUser.name
    }
    
    func createButtonTapped() {
        //nav to create screen
    }
}
/// struct for guest view implementation of the navigation buttons
struct GuestViewState: UserViewState {
    var context = FlashCardManager.shared
    let user: FlashCardUser = guestUser()
    
    func cardButtonTapped() {
        //refresh view
    }
    
    func accountButtonTapped() {
        // login portal
    }
    
    func createButtonTapped() {
        // login portal
    }
}

struct UnknownTypeUser: UserViewState {
    var context = FlashCardManager.shared
    
    
    func cardButtonTapped() {
        //nothing
    }
    
    func accountButtonTapped() {
        //nothing
    }
    
    func createButtonTapped() {
        //nothing
    }
}

extension UserViewState{
    func validate(userName: String?, userEmail: String?) -> UserViewState
    {
        return UserViewState.self as! UserViewState
    }
}


//
//  ViewModel.swift
//  cardProj
//
//  Created by jason hillegass on 9/9/21.
//

import Foundation
///MARK: singleton class to handle state
final public class FlashCardManager
{
    static let shared = FlashCardManager()
    
    private init(){}
    
    var currentUser: FlashCardUser
    
    fileprivate var userView: UserViewState = UnknownTypeUser()
    
    public func enterApp(userName: String, userEmail: String)
    {
        let viewToUse = userView.validate(userName: userName, userEmail: userEmail)
        FlashCardManager.shared.userView = viewToUse
    }
    
    public func cardButtonTapped() {
        let userViewCopy = userView
        userViewCopy.cardButtonTapped()
    }
    
    public func accountButtonTapped() {
        let userViewCopy = userView
        userViewCopy.accountButtonTapped()
    }
    
    public func createButtonTapped() {
        let userViewCopy = userView
        userViewCopy.createButtonTapped()
    }
}
